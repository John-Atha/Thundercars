import React from 'react';
import './UserMyStatistics.css';
import {getUserStats, getUserProfile, isLogged} from './api'
import MyNavbar from './MyNavbar'; 
import CanvasJSReact from './canvasjs.react';
import Carousel from 'react-bootstrap/Carousel';
import UnAuthorized from './UnAuthorized';

//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

class ControlledCarousel extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            index: 0,
        };
        this.setIndex = this.setIndex.bind(this);
        this.handleSelect = this.handleSelect.bind(this);
    }

    setIndex = (selected) => {
        this.setState({
            index: selected,
        })
    }
  
    handleSelect = (selectedIndex, e) => {
      this.setIndex(selectedIndex);
    };
  
    render() {

        return (
        <Carousel activeIndex={this.state.index} onSelect={this.handleSelect} className="margin-top-small">
            <Carousel.Item interval={7000}>
                <CanvasJSChart id="pie-diagram1" options = {this.props.options1} />
            <Carousel.Caption>
                <h3>Number of sessions per Month</h3>
            </Carousel.Caption>
            </Carousel.Item>
            
            <Carousel.Item interval={7000}>
            <CanvasJSChart id="pie-diagram2" options = {this.props.options2}/>
            <Carousel.Caption>
                <h3>Number of stations visited per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

            <Carousel.Item interval={7000}>
                <CanvasJSChart id="pie-diagram3" options = {this.props.options3}/>
            <Carousel.Caption>
                <h3>kWh provided per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

            <Carousel.Item interval={7000}>
                <CanvasJSChart id="pie-diagram4" options = {this.props.options4}/>
            <Carousel.Caption>
                <h3>Cost per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

        </Carousel>
        );
    }
}


class UserPiesContainer extends React.Component {
    constructor(props) {
        super(props);
        this.state= {
            userId: localStorage.getItem('userId'),
            data: [],
            diagramOptions1: {},
            diagramOptions2: {},
            diagramOptions3: {},
            diagramOptions4: {},
            diagram: true,
        }
    }

    componentDidMount() {
        getUserStats(this.state.userId)
        .then(response => {
            console.log(response);
            let sessionsList = [];
            let stationsList = [];
            let kwhList = [];
            let costList = [];

            let str2="Stations Visited";
            let str3="Total kWh Delivered";
            let str4="Total Cost";

            for (var i=0; i<response.data.Summary.length; i++) {
                let month = response.data.Summary[i].Month
                let year = response.data.Summary[i].Year;
                sessionsList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[i].Sessions),
                })
                stationsList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[i][str2]),
                })
                kwhList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[i][str3])
                })
                costList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[i][str4])
                })
            }
            console.log(sessionsList);
            console.log(costList);
            console.log(kwhList);
            console.log(stationsList);

            this.setState({
                data: response.data.Summary,
                diagram: sessionsList.length>0,
                diagramOptions1: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "white",
                    },
                    axisY : {
                        labelFontColor: "white",
                    },
                    height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: sessionsList
                    }]
                },
                diagramOptions2: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "white",
                    },
                    axisY : {
                        labelFontColor: "white",
                    },
                    height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: stationsList
                    }]
                },
                diagramOptions3: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "white",
                    },
                    axisY : {
                        labelFontColor: "white",
                    },
                    height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: kwhList
                    }]
                },
                diagramOptions4: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "white",
                    },
                    axisY : {
                        labelFontColor: "white",
                    },
                    height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: costList
                    }]
                } 
            })
        })
        .catch(err=>{
            console.log(err);
            this.setState({
                diagram: false,
                error: "No sessions found, go charge!!"
            })
        })
    }

    render() {
        if (this.state.diagram) {
            return <ControlledCarousel
            options1 = {this.state.diagramOptions1} 
            options2 = {this.state.diagramOptions2}
            options3 = {this.state.diagramOptions3}
            options4 = {this.state.diagramOptions4} />
        }
        else {
            return (
                <div className="error-message margin-top">
                    We couldn't find any sessions <br></br><br></br> <p className="color2">Go charge!!</p>
                </div>
            )
        }
        

    };
        

    /*  
        return (

                <CanvasJSChart id="pie-diagram1" options = {this.state.diagramOptions1} />

                <CanvasJSChart id="pie-diagram2" options = {this.state.diagramOptions2} />

                <CanvasJSChart id="pie-diagram3" options = {this.state.diagramOptions3} />

                <CanvasJSChart id="pie-diagram4" options = {this.state.diagramOptions4} />

      }

    //render(<ControlledCarousel />);*/
}

class UserMyStatistics extends React.Component {

    constructor(props) {
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            firstname: null,
            username: null,
            logged: false,
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited";
        this.attr2Name = "Total Cost";
        this.attr3Name = "Total kWh Delivered";
        this.attr4 = "First Name";
    }

    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
            getUserProfile(this.state.userId)
            .then(response =>{
                console.log(response);
                this.setState({
                    firstname: response.data[this.attr4],
                    username: response.data.Username
                });
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not find data, please try again later"
                })
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged: false,
            })
        })
    }

    render() {
        if (!this.state.userId || !this.state.logged) {
            return (
                <UnAuthorized 
                    message="You need to create an account to have access to the statistics feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }

        else if(localStorage.getItem('role')==="StationOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a vehicle owner to have access to this statistics feature"
                    linkMessage="Log out and create an account as a vehicle owner"
                    link="/register"
                    link2Message="See your statistics"
                    link2="/StationsMonthlyStatistics" 
                />
            )
        }
        else {     
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="specific-title">
                            {this.state.username}: Statistics
                        </div>
                        <UserPiesContainer />
                    </div>
                </div>
            )
        }
    }
}

export default UserMyStatistics;