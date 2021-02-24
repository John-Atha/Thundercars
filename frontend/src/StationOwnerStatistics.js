import React from "react"
import "./StationOwnerStatistics.css";
import MyNavbar from './MyNavbar'; 
import {getStationOwnerStatistics, getStations} from './api';
import CanvasJSReact from './canvasjs.react';
//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

class StatOwnerPiesContainer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            data: null,
            diagramOptions1: null,
            diagramOptions2: null,
            diagramOptions3: null,
            diagramOptions4: null,
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

            let totalSessions=0;
            let totalUsers=0;
            let totalEarnings=0;
            let totalkWh=0;
            let str2 = "kWh Delivered";

            for (var j=0; j<response.data.Summary.length; j++) {
                totalSessions=totalSessions+response.data.Summary[j].Sessions;
                totalUsers=totalUsers+response.data.Summary[j].Users;
                totalEarnings=totalEarnings+response.data.Summary[j].Earnings;
                totalkWh=totalkWh+response.data.Summary[j][str2];
            }  
        
            for (j=0; j<response.data.Summary.length; j++) {
                let lab = response.data.Summary[j].Month+"/"+response.data.Summary[j].Year;
                SessionsList.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[j].Sessions / totalSessions)
                })
                UsersList.push({
                    label: lab,
                    y: Math.round( 100* response.data.Summary[j].Users / totalUsers)
                })
                EarningsList.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[j].Earnings / totalEarnings)
                })
                kWhDelivered.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[j][str2] / totalkWh)
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
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Number of sessions per month",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
                        dataPoints: SessionsList
                    }]
                },
                diagramOptions2: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Number of users per month",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
                        dataPoints: UsersList
                    }]
                },
                diagramOptions3: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Earnings per month",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
                        dataPoints: EarningsList
                    }]
                },
                diagramOptions4: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "kWh delivered per month",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
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
        return (
        <div className="stat-owners-stats-pie-diagrams">
            <h5 className="orangeColor center-content">Station's General Info</h5>
            <CanvasJSChart id="pie-diagram1" options = {this.state.diagramOptions1} />
            <CanvasJSChart id="pie-diagram2" options = {this.state.diagramOptions2} />
            <CanvasJSChart id="pie-diagram3" options = {this.state.diagramOptions3} />
            <CanvasJSChart id="pie-diagram4" options = {this.state.diagramOptions4} />
        </div>
        )
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
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            Statistics
                        </div>
                        <div className="station-stats-info-container">
                            {
                                this.state.stationsList.map((value, key) => {
                                        if (typeof(value)==="number") {
                                            return (
                                                <div key={key} className="station-info-title darker">Station {value}</div>
                                            )
                                        }
                                        else {
                                            return (
                                                <div key={key} className="station-info darker">{value}</div>

                                            )
                                        }
                                })
                            }       
                        </div>
                        <StatOwnerPiesContainer/>
                    </div>
                </div>
            )
        }
    }




}

export default StationOwnerStatistics;