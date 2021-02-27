import React from 'react';
import './UserVehicleStatistics.css';
import {getVehicleSessions, getUserProfile, getVehicles} from './api'
import MyNavbar from './MyNavbar'; 
import CanvasJSReact from './canvasjs.react';
//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;


class VehicleStatisticsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            id: this.props.id,
            brand: this.props.brand,
            model: this.props.model,
            error: null,
            sessions: 0,
            totalCost: 0,
            totalKWh: 0,
            startDate: this.props.startDate, 
            endDate: this.props.endDate,
        }
        this.attr1 = "Vehicle Charging Sessions List";
        this.attr2 = "kWh Delivered";
        this.attr3 = "Session Cost";
    }

    componentDidMount() {
        getVehicleSessions(this.state.id, this.state.startDate, this.state.endDate)
        .then(response => {
            console.log(response);
            let sessions = response.data[this.attr1];
            let totalKWh = 0;
            let totalCost = 0;
            sessions.forEach(session => {
                totalKWh = totalKWh + session[this.attr2];
                totalCost = totalCost + session[this.attr3];
            })
            this.setState({
                sessions: sessions.length,
                totalCost: totalCost,
                totalKWh: totalKWh,
            });
        })
        .catch(err => {
            console.log(err);
        })
    }

    componentDidUpdate(prevProps) {
        if (prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            getVehicleSessions(this.state.id, this.props.startDate, this.props.endDate)
            .then(response => {
                console.log(response);
                let sessions = response.data[this.attr1];
                let totalKWh = 0;
                let totalCost = 0;
                sessions.forEach(session => {
                    totalKWh = totalKWh + session[this.attr2];
                    totalCost = totalCost + session[this.attr3];
                })
                this.setState({
                    sessions: sessions.length,
                    totalCost: totalCost,
                    totalKWh: totalKWh,
                });
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    totalKWh: 0,
                    totalCost: 0,
                    sessions: 0,
                })
            })
        }
    }

    render() {
        return(
            <div className="one-station-container center-content">
                <h5 className="orangeColor center-content">Vehicle {this.props.id}</h5>
                <div className="station-page-info-container">
                    <div className="station-info-title darker">Brand: </div><div className="station-info darker">{this.state.brand}</div>
                    <div className="station-info-title">Model: </div><div className="station-info">{this.state.model}</div>
                    <div className="station-info-title darker">Sessions: </div><div className="station-info darker">{this.state.sessions}</div>
                    <div className="station-info-title">Total money spent: </div><div className="station-info">{Math.round(100*this.state.totalCost)/100}</div>
                    <div className="station-info-title darker">Total energy(kWh) provided: </div><div className="station-info darker">{Math.round(100*this.state.totalKWh)/100}</div>
                </div>
            </div>

        )
    }

}



class UserVehicleStatistics extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            vehList: [],
            startDate: "2021-01-27",
            endDate: "",
        }
        this.attr1="Vehicles List";
        this.handleInput = this.handleInput.bind(this);
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
        console.log(name+":  ");
        console.log(value);
    }

    componentDidMount() {
        getVehicles(this.state.userId)
        .then(response => {
            console.log(response);
            this.setState({
                vehList: response.data[this.attr1],
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "No vehicles found",
            })
        })
    }

    render() {
        if (!this.state.userId || this.state.role==="Station Owner") {
            window.location.href="/";
        }
        else {
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            Sessions summary
                        </div>

                        <div className="time-filters-container center-content">
                                <label className="start-date-label" htmlFor="startDate">From</label>
                                <label className="end-date-label"   htmlFor="endDate">To</label>
                                <input className="start-date-input" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                <input className="start-date-input" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                        </div>

                        <div id="stats-info-container">
                            {
                                this.state.vehList.map((value, key, index)=> {
                                    console.log(key);
                                    return (<VehicleStatisticsDiv
                                            key={key} 
                                            id={value.Vehicle}
                                            brand={value.Brand}
                                            model={value.Model}
                                            startDate={this.state.startDate}
                                            endDate={this.state.endDate}
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

export default UserVehicleStatistics;