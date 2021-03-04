import React from 'react';
import './VehiclesDetailedSessions.css';
import {getVehicles, getAllUserVehicle, getVehicleSessions} from './api';
import MyNavbar from './MyNavbar';
import UnAuthorized from './UnAuthorized';

//import CanvasJSReact from './canvasjs.react';
//var CanvasJSChart = CanvasJSReact.CanvasJSChart;


class OneSession extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            start: this.props.start,
            charged: this.props.charged,
            end: this.props.end,
            protocol: this.props.protocol,
            kWhDel: this.props.kWhDel,
            cost: this.props.cost,
            costPerkWh: this.props.costPerkWh,
            energyProv: this.props.energyProv,
        }
    }

    render() {
        console.log("my start: "+this.props.start);
        return (
            <div className="one-vehicle-sessions-container flex-item box-colors">
                <div className="station-info-title darker">Connected on: </div>
                <div className="station-info darker">{this.state.start}</div>
                <div className="station-info-title">Charged on </div>
                <div className="station-info ">{this.state.charged}</div>
                <div className="station-info-title darker">Disconnected on: </div>
                <div className="station-info darker ">{this.state.end}</div>
                <div className="station-info-title">Protocol </div>
                <div className="station-info">{this.state.protocol}</div>
                <div className="station-info-title darker">kWh delivered: </div>
                <div className="station-info darker">{this.state.kWhDel}</div>
                <div className="station-info-title">Cost </div>
                <div className="station-info">{this.state.cost}</div>
                <div className="station-info-title darker">Cost per kWh: </div>
                <div className="station-info darker">{this.state.costPerkWh}</div>
                <div className="station-info-title">Energy Provider: </div>
                <div className="station-info">{this.state.energyProv}</div>
            </div>
        )
    }

}

class OneVehSessionsDiv extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            vehId: this.props.id,
            userHasVehicleIds: [],
            userHasVehicleCurrent: null,
            operator: null,
            procNumber: null,
            visitedPoints: null,
            totalkWh: null,
            procList: [],
            error: null,
            startDate: this.props.startDate,
            endDate: this.props.endDate,
        }
        this.attr0 = "Energy Provider";
        this.attr1 = "Started On";
        this.attr2 = "Charged On";
        this.attr3 = "Finished On";
        this.attr4 = "kWh Delivered";
        this.attr5 = "Price Policy Ref";
        this.attr6 = "Cost Per kWh";
        this.attr7 = "Vehicle Charging Sessions List";
        this.attr8 = "Session Cost";
        this.attr9 = "Visited Points";
        this.attr10 = "Total kWh Consumed";
    }

    componentDidMount() {
        this.setState({
            error: "Loading results..."
        })
        getAllUserVehicle()
        .then(response => {
            console.log(response);
            let userVehiclesList = response.data;
            // find userHasVehicle objects that referr to current user
            userVehiclesList.forEach(el => {
                //console.log("user: " + el.user.id);
                
                if (el.user && el.vehicle) {
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
                }
            })
            // find userHasVehicle objects of current user that referr to current vehicle
            this.state.userHasVehicleIds.forEach(el => {
                //console.log("object: "+ el);
                console.log("userVeh: "+ el.userVeh);
                console.log("vehicle: "+ el.veh);
                console.log("--my vehicle: "+ this.state.vehId);
                if (parseInt(el.veh)===parseInt(this.state.vehId)) {
                    this.setState({
                        userHasVehicleCurrent: el.userVeh,
                    })
                    //console.log("aaaaaaaaaaa "+ el.userVeh);
                }
            })
            //console.log("aaaaaa "+ this.state.userHasVehicleCurrent);
            getVehicleSessions(this.state.userHasVehicleCurrent, this.state.startDate, this.state.endDate)
            .then(response=> {
                this.setState({
                    error: null,
                    procList: response.data[this.attr7],
                    totalkWh: response.data[this.attr10],
                    visitedPoints: response.data[this.attr9],
                    procNumber: response.data.Sessions
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not find sessions for this vehicle"
                })            
            })

            console.log("ProcList:")
            console.log(this.state.procList);
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not find sessions for this vehicle"
            })
        })
    }

    componentDidUpdate(prevProps) {
        if (prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            console.log(`from ${prevProps.startDate} to ${this.props.startDate}`);
            console.log(`from ${prevProps.endDate} to ${this.props.endDate}`);
            // remove previous objects from dom
            this.setState({
                procList: [],
                error: null,
            });
            this.state.userHasVehicleIds.forEach(el => {
                if (el[1]===this.state.vehId) {
                    this.setState({
                        userHasVehicleCurrent: el[0]
                    })
                }
            })
            getVehicleSessions(this.state.userHasVehicleCurrent, this.props.startDate, this.props.endDate)
            .then(response=> {
                this.setState({
                    procList: response.data[this.attr7],
                    totalkWh: response.data[this.attr10],
                    visitedPoints: response.data[this.attr9],
                    procNumber: response.data.Sessions
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not find sessions for this vehicle"
                })            
            })
        }
    }

    render() {
        console.log("i will show the spot's sessions");
        return (
            <div className="spot-sessions-block center-content">
                <h5 className="color2 center-content">Vehicle {this.state.vehId} Sessions</h5>
                { this.state.error===null &&
                    <div className="vehicle-info-container center-content padding-0">
                        <div className="station-info-title">Processes: </div>
                        <div className="station-info">{this.state.procNumber}</div>
                        <div className="station-info-title">Total kWh delivered: </div>
                        <div className="station-info">{this.state.totalkWh}</div>
                        <div className="station-info-title">Visited Points: </div>
                        <div className="station-info">{this.state.visitedPoints}</div>
                    </div>
                }
                { this.state.error===null &&
                    <div className="all-spots-sessions-container center-content flex-layout">
                        {
                            this.state.procList.map((value, index) => {
                                return(
                                    <OneSession 
                                        key={index}
                                        index={index+1}
                                        start={value[this.attr1]}
                                        charged={value[this.attr2]}
                                        end={value[this.attr3]}
                                        protocol={value[this.attr5]}
                                        kWhDel={value[this.attr4]}
                                        cost={value[this.attr8]}
                                        costPerkWh={value[this.attr6]}
                                        energyProv={value[this.attr0]}
                                    />
                                )
                            })
                        }
                    </div>
                }
                {
                    this.state.error!==null &&
                    <p className="error-message margin-top">{this.state.error}</p>
                }
            </div>
        )
    }
}

class VehiclesDetailedSessions extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            vehList: [],
            //showingVehId: null,
            error: "Choose a vehicle to see its sessions",
            startDate: "2019-01-01",
            endDate: "",
            noVehicles: false,
        }
        this.showingVehId = null;
        this.attr1="Vehicles List";
        this.selectEV = this.selectEV.bind(this);  
        this.handleInput = this.handleInput.bind(this);  
    }

    componentDidMount() {
        getVehicles(this.state.userId)
        .then( response => {
            console.log(response);
            let tempVehiclesList = [];
            response.data[this.attr1].forEach(element => {
                tempVehiclesList.push([element.Vehicle, element.Brand+" "+element.Type]);     // spot's id
            });
            this.setState({
                vehList: tempVehiclesList,
                //showingVehId: tempVehiclesList[0][0],
            });
            console.log("Vehicles: ");
            console.log(this.state.vehList);
            //console.log(this.state.showingVehId);
        })
        .catch(err=> {
            console.log(err);
            this.setState({
                noVehicles: true,
            })
        })
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


    selectEV = (event) => {
        this.setState({
            //showingVehId: event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''),
            error: null,
        })
        this.showingVehId = event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''); 
        console.log("pressed: " + event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''))
        console.log("pressed: " + this./*state.*/showingVehId)
    }

    render() {
        if (!this.state.userId) {
            return (
                <UnAuthorized 
                    message="You need to create an account to have access to the detailed sessions history feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="StationOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a vehicle owner to the detailed sessions history per EV feature"
                    linkMessage="Log out and create an account as a vehicle owner"
                    link="/register"
                    link2Message="See your spots detailed sessions history"
                    link2="/mySpotsDetailedSessions" 
                />
            )
        }

        else {        
            return (
                <div className="spot-sessions-all-page">
                        <MyNavbar />
                        <div className="spots-sessions-page-container more-blur center-content padding-bottom5">
                            
                            <div className="specific-title color2">
                                Detailed Sesions Per Vehicle
                                {!this.state.noVehicles && this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}
                            </div>

                            {this.state.noVehicles &&
                                <div>
                                    <div className="error-message margin-top">
                                        You don't own any vehicles
                                    </div>
                                    <br></br>
                                    <a href="/addVehicle">Add one</a>
                                </div>
                            }  

                            {!this.state.noVehicles &&
                                <div className="spots-buttons-container center-content flex-layout">
                                    {   
                                        this.state.vehList.map((value, index) => {
                                            //console.log(index);
                                            return (<button className="choice-button my-button flex-item-small" key={value[0]} onClick={this.selectEV}>Vehicle {value[0]}: {value[1]}</button>)
                                        })
                                    }
                                </div>
                            }
                            {!this.state.noVehicles &&
                                <div className="time-filters-container center-content flex-layout fix-width center-content">
                                    <div className="start-date-container flex-item-small">
                                        <label className="start-date-label row-1" htmlFor="startDate">From</label>
                                        <input className="start-date-input row-2" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                    </div>
                                    <div className="end-date-container flex-item-small">
                                        <label className="end-date-label row-1" htmlFor="endDate">To</label>
                                        <input className="end-date-input row-2" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                                    </div>
                                </div>
                            }

                            {!this.state.noVehicles && this./*state.*/showingVehId && 
                                    <div className="spots-container margin-top-small">
                                        <OneVehSessionsDiv
                                            id={this./*state.*/showingVehId}
                                            key={this./*state.*/showingVehId}
                                            startDate={this.state.startDate}
                                            endDate={this.state.endDate}
                                        /> 
                                    </div>
                                
                            }   
                        </div>
                    </div>
            )
        }
    }
}

export default VehiclesDetailedSessions;