import React from 'react';
import './UserMyStatistics.css';
import {getUserStats, getUserProfile} from './api'
import MyNavbar from './MyNavbar'; 
import CanvasJSReact from './canvasjs.react';
//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

/*class UserStatisticsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            key: this.props.key,
            month: this.props.month,
            sessions: this.props.sessions,
            stationsVisited: this.props.stationsVisited,
            totalCost: this.props.totalCost,
            totalKWhDelivered: this.props.totalKWhDelivered,
            year: this.props.year,
        }
    }

    render() {
        return (
            <div className="sub-list-container center-content">
                <div id="stats-session-year">Year: {this.state.year}</div>
                <div id="stats-session-month">Month: {this.state.month}</div>
                <div id="stats-session-sessions">Sessions: {this.state.sessions}</div>
                <div id="stats-session-stations-visited">Stations visited: {this.state.stationsVisited}</div>
                <div id="stats-session-total-cost">Total cost($): {this.state.totalCost}</div>
                <div id="stats-session-total-kWh-del">Total energy delivered(kWh): {this.state.totalKWhDelivered}</div>
            </div>
        )
    }
}
*/

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

            let totalSessions = 0;
            let totalStations = 0;
            let totalKWh = 0;
            let totalCost = 0;

            let str2="Stations Visited";
            let str3="Total kWh Delivered";
            let str4="Total Cost";

            for (var i=0; i<response.data.Summary.length; i++) {
                totalSessions = totalSessions + response.data.Summary[i].Sessions;
                totalStations = totalStations + response.data.Summary[i][str2];
                totalKWh = totalKWh + response.data.Summary[i][str3];
                totalCost = totalCost + response.data.Summary[i][str4];
            }

            for (i=0; i<response.data.Summary.length; i++) {
                let lab = response.data.Summary[i].Month+"/"+response.data.Summary[i].Year;
                sessionsList.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[i].Sessions / totalSessions)
                })
                stationsList.push({
                    label: lab,
                    y: Math.round( 100* response.data.Summary[i][str2]/ totalStations)
                })
                kwhList.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[i][str3] / totalKWh)
                })
                costList.push({
                    label: lab,
                    y: Math.round(100* response.data.Summary[i][str4] / totalCost)
                })
            }
            console.log(totalSessions);
            console.log(sessionsList);
            console.log(costList);
            console.log(kwhList);
            console.log(stationsList);

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
                        dataPoints: sessionsList
                    }]
                },
                diagramOptions2: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Number of stations visited per month",
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
                        dataPoints: stationsList
                    }]
                },
                diagramOptions3: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "kWh provided per month",
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
                        dataPoints: kwhList
                    }]
                },
                diagramOptions4: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Money spent per month",
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
        return (
            <div>
                { this.state.diagram && 
                    
                        <div className="vehicle-owners-stats-pie-diagrams">
                            <h5 className="orangeColor center-content">Monthly data</h5>
                            <CanvasJSChart id="pie-diagram1" options = {this.state.diagramOptions1} />
                            <CanvasJSChart id="pie-diagram2" options = {this.state.diagramOptions2} />
                            <CanvasJSChart id="pie-diagram3" options = {this.state.diagramOptions3} />
                            <CanvasJSChart id="pie-diagram4" options = {this.state.diagramOptions4} />
                        </div>
                    
                }
                { this.state.diagram===false &&
                        <div className="error-message margin-top">
                            {this.state.error}
                        </div>
                }
            </div>
        )
    }
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

            //userStatsList: [],
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited";
        this.attr2Name = "Total Cost";
        this.attr3Name = "Total kWh Delivered";
        this.attr4 = "First Name";
    }

    /*componentDidMount () {
        
        if (this.state.role==="VehicleOwner") {
            getUserStats(this.state.userId)
            .then(response => {
                console.log(response);
                this.setState({
                    userStatsList: response.data.Summary
                })
                console.log(this.state.userStatsList);
            })
            .catch(err => {
                console.log(err);
            })
        }
    }*/

    componentDidMount() {
        getUserProfile(this.state.userId)
        .then(response =>{
            console.log(response);
            this.setState({
                firstname: response.data[this.attr4],
                username: response.data.Username
            });
        })
    }

    render() {
        if (!localStorage.getItem('userId') || this.state.role==="StationOwner") {
            window.location.href = "/";
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