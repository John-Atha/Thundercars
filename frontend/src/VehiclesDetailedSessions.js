import React from 'react';
import './VehiclesDetailedSessions.css';
import {getVehicles, getAllUserVehicle, getVehicleSessions} from './api';
import MyNavbar from './MyNavbar';

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
            <div className="one-vehicle-sessions-container">
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
                <div className="station-info-title">Energy Provider </div>
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
        this.attr6 = "Cost Per kwh";
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
                    error: "Could not find sessions for this vehicle2"
                })            
            })

            console.log("ProcList:")
            console.log(this.state.procList);
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not find sessions for this vehicle1"
            })
        })
    }

    componentDidUpdate(prevProps) {
        if (prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            console.log(`from ${prevProps.startDate} to ${this.props.startDate}`);
            console.log(`from ${prevProps.endDate} to ${this.props.endDate}`);
            // remove previous objects from dom
            this.setState({
                procList: []
            });
            this.state.userHasVehicleIds.forEach(el => {
                if (el[1]===this.state.vehId) {
                    this.setState({
                        userHasVehicleCurrent: el[0]
                    })
                }
            })
            getVehicleSessions(this.state.userHasVehicleCurrent, this.state.startDate, this.state.endDate)
            .then(response=> {
                this.setState({
                    procList: response.data[this.attr7],
                    totalkWh: response.data[this.attr9],
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
                <h5 className="orangeColor center-content">Vehicle {this.state.vehId} Sessions</h5>
                { this.state.error===null &&
                    <div className="vehicle-info-container center-content">
                        <div className="station-info-title">Processes: </div>
                        <div className="station-info">{this.state.procNumber}</div>
                        <div className="station-info-title">Total kWh delivered: </div>
                        <div className="station-info">{this.state.totalkWh}</div>
                        <div className="station-info-title">Visited Points: </div>
                        <div className="station-info">{this.state.visitedPoints}</div>
                    </div>
                }
                { this.state.error===null &&
                    <div className="all-spots-sessions-container center-content">
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
                    <p className="red-color">{this.state.error}</p>
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
        if ((!this.state.userId) || this.state.role!=="VehicleOwner") {
            window.location.href="/";
        }
        else {        
            return (
                <div className="spot-sessions-all-page">
                        <MyNavbar />
                        <div className="spots-sessions-page-container more-blur center-content padding-bottom5">
                            
                            <div className="specific-title orangeColor">
                                Detailed Sesions Per Vehicle
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}  
                            </div>

                            <div className="spots-buttons-container center-content">
                                {   
                                    this.state.vehList.map((value, index) => {
                                        //console.log(index);
                                        return (<button className="spot-choose-button" key={value[0]} onClick={this.selectEV}>Vehicle {value[0]}: {value[1]}</button>)
                                    })
                                }
                            </div>

                            <div className="time-filters-container center-content">
                                <label className="start-date-label" htmlFor="startDate">From</label>
                                <label className="end-date-label"   htmlFor="endDate">To</label>
                                <input className="start-date-input" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                <input className="start-date-input" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                            </div>


                            {   this./*state.*/showingVehId && 
                                    <div className="spots-container margin-top">
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