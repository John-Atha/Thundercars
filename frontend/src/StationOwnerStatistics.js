import React from "react"
import "./StationOwnerStatistics.css";
import MyNavbar from './MyNavbar'; 
import {getStationOwnerStatistics, getStations, isLogged} from './api';
import CanvasJSReact from './canvasjs.react';
import Carousel from 'react-bootstrap/Carousel';
import UnAuthorized from './UnAuthorized';

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
        <Carousel activeIndex={this.state.index} onSelect={this.handleSelect}>
            <Carousel.Item interval={10000}>
                <CanvasJSChart id="pie-diagram1" options = {this.props.options1} />
            <Carousel.Caption>
                <h3>Number of sessions per Month</h3>
            </Carousel.Caption>
            </Carousel.Item>
            
            <Carousel.Item interval={10000}>
            <CanvasJSChart id="pie-diagram2" options = {this.props.options2}/>
            <Carousel.Caption>
                <h3>Number of users per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

            <Carousel.Item interval={10000}>
                <CanvasJSChart id="pie-diagram3" options = {this.props.options3}/>
            <Carousel.Caption>
                <h3>Earnings per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

            <Carousel.Item interval={10000}>
                <CanvasJSChart id="pie-diagram4" options = {this.props.options4}/>
            <Carousel.Caption>
                <h3>kWh delivered per month</h3>
            </Carousel.Caption>
            </Carousel.Item>

        </Carousel>
        );
    }
}

class StatOwnerPiesContainer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            data: [],
            diagramOptions1: {},
            diagramOptions2: {},
            diagramOptions3: {},
            diagramOptions4: {},
            diagrams: true,
        }
    }

    componentDidMount() {
        getStationOwnerStatistics(this.state.userId)
        .then(response => {
            console.log(response);
            console.log("blepw data:");
            console.log(response.data.Summary);
            let SessionsList = [];
            let UsersList = [];
            let EarningsList = [];
            let kWhDelivered = [];

            let str2 = "kWh Delivered";
        
            for (var j=0; j<response.data.Summary.length; j++) {
                let month = response.data.Summary[j].Month;
                let year = response.data.Summary[j].Year;
                SessionsList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[j].Sessions)
                })
                UsersList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[j].Users)
                })
                EarningsList.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[j].Earnings)
                })
                kWhDelivered.push({
                    x: new Date(year, month, 1),
                    y: parseInt(response.data.Summary[j][str2])
                })
            }

            console.log(SessionsList);
            console.log(UsersList);
            console.log(EarningsList);
            console.log(kWhDelivered);

            this.setState({
                data: response.data.Summary,
                diagrams: SessionsList.length>0,
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
                    //height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: SessionsList
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
                    //height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: UsersList
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
                    //height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: EarningsList
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
                    //height: 300,
                    data: [{
                        color: "white",
                        type: "line",
                        dataPoints: kWhDelivered
                    }]
                } 
            })
        })
        .catch(err=> {
            console.log(err);
            this.setState({
                diagrams: false,
            })
        })

    }

    render() {
        if (this.state.diagrams) {
            return (
                <ControlledCarousel
                    options1 = {this.state.diagramOptions1} 
                    options2 = {this.state.diagramOptions2}
                    options3 = {this.state.diagramOptions3}
                    options4 = {this.state.diagramOptions4} />
            )
        }
        else {
            return (
                <div className="error-message margin-top-small center-content">No sessions found!</div>

            )
        }
        
    }

}

class StationOwnerStatistics extends React.Component {
        
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            statsList: [],
            stationsList: [],
            logged: false,
        }
    }

    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
            getStations(this.state.userId)
            .then( response => {
                let stationsInitList = []
                let stationsTempList = []
                console.log(response);
                stationsInitList = response.data.StationsList;
                stationsInitList.forEach(element => {
                    stationsTempList.push(element.Id+",,"+element.Title);
                })
                this.setState({
                    stationsList: stationsTempList
                })
                console.log("stationsList:");
                console.log(this.state.stationsList);
            })
            .catch(err => {
                console.log(err);
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
        if (!this.state.userId || this.state.logged===false) {
            return (
                <UnAuthorized 
                    message="You need to create an account to have access to the statistics feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to this statistics feature"
                    linkMessage="Log out and create an account as a station owner"
                    link="/register"
                    link2Message="See your statistics"
                    link2="/usermystatistics" 
                />
            )
        }
        else {
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="specific-title">
                            Statistics
                        </div>
                        
                        {!this.state.stationsList.length && 
                            <div className="error-message margin-top-small center-content">No stations found,<br></br><br></br><a href="/addStation">add one from here</a></div>
                        }

                            <div className="station-title-container small-margin-bottom">
                                {
                                    this.state.stationsList.map((value, key) => {
                                        let valueParts = value.split(",,");
                                        return (
                                            <div key={key}>Station {valueParts[0]}: {valueParts[1]}</div>
                                        )
                                            
                                    })
                                }       
                            </div>
                        {this.state.stationsList.length>0 &&
                            <StatOwnerPiesContainer />
                        }

                    </div>
                </div>
            )
        }
    }




}

export default StationOwnerStatistics;