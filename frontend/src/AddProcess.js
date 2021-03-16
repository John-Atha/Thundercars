import React from 'react';
import './AddProcess.css';
import MyNavbar from './MyNavbar';
import {getUserOBJECT, isLogged, getVehicles, getOneStation} from './api';
import UnAuthorized from './UnAuthorized';

class AddProcess extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            submitDisabled: true,
            logged: false,
            stationId: this.props.id,
            title: null,
            costPerkWh: null,
            spotsList: [],
            vehList: [],
            objectVeh: [],
            kWh: 0,
            finish: false,
            stationErr: null,
            //program: null,
        }
        this.program = null;
        this.programName=null;
        this.spotId = null;
        this.oneSpot = false;
        this.chargers = [];
        this.vehId = null;
        this.attr1="Vehicles List";

        this.handleInput = this.handleInput.bind(this);
        this.selectEV = this.selectEV.bind(this);
        this.selectSpot = this.selectSpot.bind(this);
        this.selectProgram = this.selectProgram.bind(this);
        this.showSpots = this.showSpots.bind(this);
        this.startSimulation = this.startSimulation.bind(this);
    }

    showSpots = () => {
        getOneStation(this.state.stationId)
        .then(response => {
            console.log(response);
            this.setState({
                spotsList: response.data.Spots,
            })
            console.log(this.state.spotsList);
        })
        .catch(err => {
            console.log(err);
            this.setState({
                err: "No spots found for this station",
            })
        })
    }

    startSimulation = () => {
        this.program = null;
        this.programName = null;
        this.spotId = null;
        this.vehId = null;
        this.setState({
            //program: null,
            vehList: [],
            spotsList: [],
            kWh: 0,
            finish: true,
        })
    }

    selectSpot = (event) => {
        this.program = null;
        this.programName = null;
        Array.from(document.getElementsByClassName('spot-charge-button')).forEach( button => {
            button.style.backgroundColor="rgb(146, 145, 145)"
        })
        event.target.style.backgroundColor = "green";
        this.setState({
            error: null,
            kWh: 0,
        })
        this.spotId = event.target.innerText.substring(0, event.target.innerText.indexOf('(')).replace('Spot ', '').replace(' ', '');
 
        console.log("pressed: " + event.target.innerText.substring(0, event.target.innerText.indexOf('(')).replace('Spot ', '').replace(' ', ''))
        console.log("pressed: " + this.spotId);
    }

    selectEV = (event) => {
        this.oneSpot = false;
        this.program = null;
        this.programName = null;
        this.spotId = null;
        Array.from(document.getElementsByClassName('vehicle-charge-button')).forEach( button => {
            button.style.backgroundColor="rgb(146, 145, 145)"
        })
        event.target.style.backgroundColor = "green";
        this.setState({
            //vehId: event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''),
            error: null,
            kWh: 0,
        })
        this.vehId = event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''); 
        console.log("pressed: " + event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''))
        console.log("pressed: " + this./*state.*/vehId);
        this.chargers = [];
        // for all my vehicles
        this.state.objectVeh.forEach(veh => {
          console.log("checking vehicle: " + veh);
          // when you find the chosen one
          if (parseInt(veh.Vehicle)===parseInt(this.vehId)) {
            console.log("found chosen one");
            // for all tits elements
            /*veh.AcChargers.forEach((el, index) => {
              console.log("pushing charger: " + el);
                // keep the ones after the second one, which are the chargers portnames
              if (index>1) {
                this.chargers.push(el);
              }
            })*/
            veh["Ac Charger Ports"].forEach(el => {
                this.chargers.push(el["Port Name"])
            })
            veh["Dc Charger Ports"].forEach(el => {
                this.chargers.push(el["Port Name"])
            })
          }
        })
        console.log("chargers: " + this.chargers);    
        this.showSpots();
    }

    selectProgram = (event) => {
        Array.from(document.getElementsByClassName('program-charge-button')).forEach( button => {
            button.style.backgroundColor="rgb(146, 145, 145)"
        })
        event.target.style.backgroundColor = "green";
        this.setState({
            error: null,
            //program: event.target.innerText.replace('Slow', '').replace('Medium', '').replace('Fast', '').replace('(', '').replace(')', '').replace(' ', '').replace(' $/kWh', ''),
        })
        let chosen = event.target.innerText;
        this.programName = chosen.startsWith('Slow') ? "slow" : (chosen.startsWith('Medium') ? "medium" : "fast");
        this.program = event.target.innerText.replace('Slow', '').replace('Medium', '').replace('Fast', '').replace('(', '').replace(')', '').replace(' ', '').replace(' $/kWh', '');
        console.log("Chose program: " + this.program);
    }
 
    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
            getOneStation(this.state.stationId)
            .then(response => {
                console.log(response);
                this.setState({
                    title: response.data.Title,
                    costPerkWh: response.data["Cost Per kWh"],
                })
                console.log(this.state.title);
                console.log(this.state.costPerkWh);
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    stationErr: `Could not find station ${this.state.stationId}`,
                })
            })    
            getVehicles(this.state.userId)
            .then( response => {
                console.log(response);
                let tempVehiclesList = [];
                response.data[this.attr1].forEach(element => {
                    tempVehiclesList.push([element.Vehicle, element.Brand+" "+element.Type]);     // spot's id
                });
                this.setState({
                    objectVeh: response.data["Vehicles List"],
                    vehList: tempVehiclesList,
                    //vehId: tempVehiclesList[0][0],
                });
                console.log("Vehicles: ");
                console.log(this.state.vehList);
                //console.log(this.state.vehId);
            })
            .catch(err=> {
                console.log(err);
                this.setState({
                    noVehicles: true,
                })
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged: false,
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
    
    render() {

        if (!this.state.userId || !this.state.logged) {
            return (
                <UnAuthorized 
                    message="You need to create an account to charge using our website"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="StationOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a vehicle owner to charge"
                    linkMessage="Log out and create an account as a vehicle owner"
                    link="/register" 
                />
            )
        }
        else if (this.state.stationErr) {
            return (
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="add-station-specific-title">
                            <div className="station-info-title">
                                Charge at Station {this.state.stationId}:<br></br>
                                {this.state.title}
                            </div> 
                        </div>
                        <div className="error-message margin-top">
                                    {this.state.stationErr}
                        </div>
                    </div>
                </div>

            )
        }
        else {      
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="add-station-specific-title">
                            <div className="station-info-title">
                                Charge at Station {this.state.stationId}:<br></br>
                                {this.state.title}
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}    
                            </div> 
                        </div>
                        {this.state.finish && (
                            <div className="success-message margin-top">
                                Thank you for choosing us!<br></br><br></br><br></br>
                                Wait till your session is finished.<br></br><br></br><br></br>
                                You will be redirected to the home page soon...
                            </div>
                        )}
                        {this.state.finish===true && 
                            setTimeout(() => {
                                window.location.href="/"
                            }, 50000000)
                        }
                        {this.state.vehList.length!==0  && this.state.finish===false && (
                            <div className="color2 margin-top-small">Choose a vehicle</div>
                        )}

                        {this.state.vehList.length===0 && this.state.finish===false && (
                            <div className="error-message margin-top">
                                You don't own any vehicles yet<br></br>
                                <a href="/addVehicle">Add one</a>    
                            </div>
                        )}

                        { this.state.finish===false &&
                            <div className="spots-buttons-container center-content flex-layout vehicleChoose">
                                        {   
                                            this.state.vehList.map((value, index) => {
                                                //console.log(index);
                                                return (<button className="choice-button my-button vehicle-charge-button flex-item-small" key={value[0]} onClick={this.selectEV}>Vehicle {value[0]}: {value[1]}</button>)
                                            })
                                        }
                            </div>
                        }
                        { this.state.spotsList.length!==0  && this.state.finish===false && (
                            <div className="color2 margin-top-small">Choose a spot</div>
                        )}
                        { this.state.finish===false &&
                            <div className="spots-buttons-container center-content flex-layout stationChoose">
                                        {
                                            this.state.spotsList.map((value, index,) => {
                                                //console.log(value);
                                                //console.log("Spot" + value.Spot);
                                                if (this.chargers.includes(value.Category) && value.QuantityAvailable>0) {
                                                    this.oneSpot = true;
                                                    return (
                                                        <button className="choice-button my-button flex-item-small spot-charge-button" onClick={this.selectSpot} key={index}>Spot {value.Spot} ({value.Category})</button>
                                                    )
                                                }
                                            })
                                        }
                            </div>
                        }
                        {
                            this.state.spotsList.length!==0 && !this.oneSpot && this.state.finish===false &&  (
                                <div className="error-message margin-top-small">No compatible spots available right now</div>
                            )
                        }

                        {
                            this.spotId!==null  && this.state.finish===false && (
                                <div className="color2 margin-top-small">Choose a program</div>
                            )
                        }
                        {
                            this.spotId!==null  && this.state.finish===false && (
                                <div className="spots-buttons-container center-content flex-layout stationChoose">
                                    <button className="choice-button program-charge-button my-button flex-item-small" onClick={this.selectProgram}>Slow ({Math.round(this.state.costPerkWh * 1.0 * 100)/100} $/kWh)</button>
                                    <button className="choice-button program-charge-button my-button flex-item-small" onClick={this.selectProgram}>Medium ({Math.round(this.state.costPerkWh * 1.15 * 100)/100} $/kWh)</button>
                                    <button className="choice-button program-charge-button my-button flex-item-small" onClick={this.selectProgram}>Fast ({Math.round(this.state.costPerkWh * 1.3 * 100)/100} $/kWh)</button>
                                </div>
                            )
                        }
                        {
                            this.program!==null  && this.state.finish===false && (
                                <div className="center-content flex-layout">
                                    <label id="labelInput" className="color2" htmlFor="kWh">kWh to be delivered</label>
                                    <input id="kWhInput" name="kWh" type="number" min="0" max="100" step=".01" value={this.state.kWh} onChange={this.handleInput}/>
                                </div>
                            )
                        }
                        {
                            parseFloat(this.state.kWh)!==0 && this.state.kWh.length!==0 && this.program!==null  && this.state.finish===false && (
                                
                                    <div className="flex-layout center-content margin-top-small">
                                        <div className="color2 flex-item-expand">
                                            Estimated charging time: {
                                                `${Math.round(this.programName==="slow" ? (10*this.state.kWh/5) : (
                                                this.programName=="medium" ? (10*this.state.kWh/6.67) : 
                                                (10*this.state.kWh/8.56))
                                                )/10} hours`
                                            } 
                                        </div>
                                        <div className="color2 flex-item-expand">
                                            Estimated cost: {
                                                `${Math.round(this.programName==="slow" ? (this.state.costPerkWh * this.state.kWh *1000) : (
                                                    this.programName=="medium" ? (1.15 * this.state.costPerkWh * this.state.kWh *1000) : 
                                                    (1.3 * this.state.costPerkWh * this.state.kWh *1000)    
                                                    ))/1000} $`
                                            }
                                        </div>
                                        <div className="color2 flex-item-expand center-content margin-top-small">
                                            <div>You are ready to charge!!<br></br>
                                            Note: If you stay at our space after your sessions is finished, you will be charged extra per hour
                                            </div>
                                        </div>
                                        <div className="color2 flex-item-expand center-content margin-top-small">
                                            <button className="my-button start-charge-button" onClick={this.startSimulation}>Start charging</button>
                                        </div>

                                    </div>
                            )
                            
                        }

                    </div>
                </div>
            )
        }
    }
    
}

export default AddProcess;