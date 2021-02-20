import React from 'react';
import './MyStatistics.css';
import {getStats} from './api'

class StatisticsDiv extends React.Component {
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

class MyStatistics extends React.Component {

    constructor(props) {
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            error: null,
            statsList: []
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited"
        this.attr2Name = "Total Cost"
        this.attr3Name = "Total KWh Delivered"
    }

    componentDidMount () {
        getStats(this.state.userId)
        .then(response => {
            console.log(response);
            this.setState({
                statsList: response.data.Summary
            })
            console.log(this.state.statsList);
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        if (!localStorage.getItem('userId')) {
            window.location.href = "/"; 
        }
        else {     
            return (
                <div className="general-page-container more-blur center-content">
                    <div className="specific-title">
                        Statistics
                    </div>
                    <div id="stats-info-container">
                        {
                            this.state.statsList.map((value, key)=> {
                                console.log(value+": "+key);
                                return (<StatisticsDiv
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
            )
        }
    }



}

export default MyStatistics;