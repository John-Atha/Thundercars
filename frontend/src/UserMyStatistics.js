import React from 'react';
import './UserMyStatistics.css';
import {getUserStats} from './api'
import MyNavbar from './MyNavbar'; 
import CanvasJSReact from './canvasjs.react';
//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

class UserStatisticsDiv extends React.Component {
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

class UserMyStatistics extends React.Component {

    constructor(props) {
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            userStatsList: [],
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited";
        this.attr2Name = "Total Cost";
        this.attr3Name = "Total kWh Delivered";
    }

    componentDidMount () {
        
        if (this.state.role=="VehicleOwner") {
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
    }

    render() {
        if (!localStorage.getItem('userId')) {
            window.location.href = "/";
        }
        else if (this.state.role==="StationOwner") {
            window.location.href ="/myStationStatistics"
        }
        else {     
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            Statistics
                        </div>
                        <div id="stats-info-container">
                            {
                                this.state.userStatsList.map((value, key)=> {
                                    console.log(value+": "+key);
                                    return (<UserStatisticsDiv
                                            key={key} 
                                            month={value.Month}
                                            sessions={value.Sessions}
                                            stationsVisited={value[this.attr1Name]}
                                            totalCost={value[this.attr2Name]}
                                            totalKWhDelivered={value[this.attr3Name]}
                                            year={value.Year}
                                            /> )
                                })
                            }
                        </div>
                    </div>
                </div>
            )
        }
    }
}

export default UserMyStatistics;