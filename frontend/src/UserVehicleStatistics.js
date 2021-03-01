import React from 'react';
import './UserVehicleStatistics.css';
import {getVehicleSessions, getVehicles, getAllUserVehicle} from './api'
import MyNavbar from './MyNavbar'; 


class VehicleStatisticsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            vehId: this.props.vehId,
            userVehId: this.props.id,
            brand: this.props.brand,
            model: this.props.model,
            dataHere: this.props.dataHere,
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
        getVehicleSessions(this.state.userVehid, this.state.startDate, this.state.endDate)
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
        if (prevProps.id!==this.props.id || prevProps.dataHere!==this.props.dataHere || prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            console.log(`UPDATE to ${this.props.id}, ${this.props.startDate}, ${this.props.endDate}`);
            getVehicleSessions(this.props.id, this.props.startDate, this.props.endDate)
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
                    totalCost: 0,
                    totalKWh: 0,
                    sessions: 0,
                })
            })
        }
    }

    render() {
        return(
            <div className="one-station-container center-content box-colors">
                <h5 className="orangeColor center-content">Vehicle {this.props.id}</h5>
                {   !this.props.dataHere && 

                        <div className="loading-message">
                            Loading...
                        </div>

                }

                { this.props.dataHere &&
                    <div className="station-page-info-container flex-item-medium-big center-content">
                        <div className="station-info-title darker">Brand: </div><div className="station-info darker">{this.state.brand}</div>
                        <div className="station-info-title">Model: </div><div className="station-info">{this.state.model}</div>
                        <div className="station-info-title darker">Sessions: </div><div className="station-info darker">{this.state.sessions}</div>
                        <div className="station-info-title">Total money spent: </div><div className="station-info">{Math.round(100*this.state.totalCost)/100}</div>
                        <div className="station-info-title darker">Total energy(kWh) provided: </div><div className="station-info darker">{Math.round(100*this.state.totalKWh)/100}</div>
                    </div>
                }
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
            userHasVehicleIds: [],
            startDate: "2019-01-01",
            endDate: "",
            dataHere: false,
            noVehicles: false,
            error: null,
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
            /*this.state.vehList.forEach(el => {
                el.userVeh = 0;
            })*/
            getAllUserVehicle()
            .then(response => {
                console.log(response);
                let userVehiclesList = response.data;
                // find userHasVehicle objects that referr to current user
                userVehiclesList.forEach(el => {
                    //console.log("user: " + el.user.id);
                    if (parseInt(el.user.id)===parseInt(this.state.userId)) {
                        console.log("brhka "+ el.user.id);
                        let temp = this.state.userHasVehicleIds;
                        temp.push(
                            {userVeh: el.id,
                            veh: el.vehicle.id,
                            });
                        this.setState({
                            userHasVehicleIds: temp,
                        })
                    }
                })
                // find userHasVehicle objects of current user that referr to current vehicles
                console.log("old veh list: " + this.state.vehList);
                this.state.vehList.forEach(el => {
                    
                    //console.log("object: "+ el);
                    console.log("vehicle1: "+ el.Vehicle);
                    
                    this.state.userHasVehicleIds.forEach(el2 => {
                        console.log("vehicle2: "+ el2.veh);
                        if (parseInt(el.Vehicle)===parseInt(el2.veh)) {
                            el.userVeh = el2.userVeh;
                        }
                    })
                })
                console.log("new veh list: " + this.state.vehList);
                this.setState({
                    dataHere: true
                })
            })
            .catch(err=>{
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                noVehicles: false,
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
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="specific-title">
                            Sessions summary
                        </div>

                        {this.state.noVehicles && 
                            <div>
                                <div className="error-message margin-top">
                                    You don't own any vehicles
                                </div>
                                <a href="/addVehicle">Add one</a>
                            </div>
                        }

                        {this.state.error===null &&  


                            <div className="time-filters-container center-content">
                                    <label className="start-date-label" htmlFor="startDate">From</label>
                                    <label className="end-date-label"   htmlFor="endDate">To</label>
                                    <input className="start-date-input" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                    <input className="start-date-input" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                            </div>

                        }

                        {this.state.error===null &&  

                            <div id="stats-info-container" className="flex-layout fix-width">
                                {
                                    this.state.vehList.map((value, key, index)=> {
                                        console.log(key);
                                        return (<VehicleStatisticsDiv
                                                key={key} 
                                                id={value.userVeh}
                                                vehId={value.veh}
                                                dataHere={this.state.dataHere}
                                                brand={value.Brand}
                                                model={value.Model}
                                                startDate={this.state.startDate}
                                                endDate={this.state.endDate}
                                                /> )
                                    })
                                }
                            </div>

                        }
                    </div>
                </div>
            )
        }
    }
}

export default UserVehicleStatistics;