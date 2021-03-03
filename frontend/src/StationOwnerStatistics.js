import React from "react"
import "./StationOwnerStatistics.css";
import MyNavbar from './MyNavbar'; 
import {getStationOwnerStatistics, getStations} from './api';
import CanvasJSReact from './canvasjs.react';
import Carousel from 'react-bootstrap/Carousel';
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
                diagramOptions1: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "red",
                    },
                    axisY : {
                        labelFontColor: "red",
                    },
                    //height: 300,
                    data: [{
                        color: "red",
                        type: "line",
                        dataPoints: SessionsList
                    }]
                },
                diagramOptions2: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "red",
                    },
                    axisY : {
                        labelFontColor: "red",
                    },
                    //height: 300,
                    data: [{
                        color: "red",
                        type: "line",
                        dataPoints: UsersList
                    }]
                },
                diagramOptions3: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "red",
                    },
                    axisY : {
                        labelFontColor: "red",
                    },
                    //height: 300,
                    data: [{
                        color: "red",
                        type: "line",
                        dataPoints: EarningsList
                    }]
                },
                diagramOptions4: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    axisX : {
                        labelFontColor: "red",
                    },
                    axisY : {
                        labelFontColor: "red",
                    },
                    //height: 300,
                    data: [{
                        color: "red",
                        type: "line",
                        dataPoints: kWhDelivered
                    }]
                } 
            })
        })
        .catch(err=> {
            console.log(err);
        })

    }

    render() {
        return <ControlledCarousel
            options1 = {this.state.diagramOptions1} 
            options2 = {this.state.diagramOptions2}
            options3 = {this.state.diagramOptions3}
            options4 = {this.state.diagramOptions4} />
        
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
        }
    }

    componentDidMount() {
        getStations(this.state.userId)
        .then( response => {
            let stationsInitList = []
            let stationsTempList = []
            console.log(response);
            stationsInitList = response.data.StationsList;
            stationsInitList.forEach(element => {
                stationsTempList.push(element.Id);
                stationsTempList.push(element.Title);
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
    }

    render() {
        if (!this.state.userId || this.state.role!==('StationOwner')) {
            window.location.href="/";
        }
        else {
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content ">
                        <div className="specific-title">
                            Statistics
                        </div>
                        <div className="station-title-container small-margin-bottom">
                            {
                                this.state.stationsList.map((value, key) => {
                                        if (typeof(value)==="number") {
                                            return (
                                                <div key={key}>Station {value}</div>
                                            )
                                        }
                                        else {
                                            return (
                                                <div key={key}>{value}</div>

                                            )
                                        }
                                })
                            }       
                        </div>
                        <StatOwnerPiesContainer />
                    </div>
                </div>
            )
        }
    }




}

export default StationOwnerStatistics;