import React from 'react';
import './AddVehicle.css';
import MyNavbar from './MyNavbar';
import {dcChargerPost, acChargerPost, dcChargerPortPost, acChargerPortPost, PowerPerChargingPost, vehiclePost, UserVehiclePost, getUserOBJECT, isLogged} from './api';
import UnAuthorized from './UnAuthorized';

class AddVehicle extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            brand: "",
            brandId: "",
            type: "bev",
            model: "",
            releaseYear: "",
            usableBatterySize: "",
            energyConsumption: "",
            acUsablePhases: "",
            acMaxPower: "",
            acPortName: "type1",
            dcMaxPower: "",
            dcIsDefaultChargingCurve: false,
            dcPortName: "chademo",
            point20: 2.0,
            point23: 2.3,
            point37: 3.7,
            point74: 7.4,
            point110: 11.0,
            point160: 11.0,
            point220: 11.0,
            point430: 11.0,
            submitDisabled: true,
            logged: false,
        }
        this.hasAc = true;
        this.hasDc = true;

        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.allowed = this.allowed.bind(this);
        this.acChange = this.acChange.bind(this);
        this.dcChange = this.dcChange.bind(this);
        this.submitActivate = this.submitActivate.bind(this);
    }

    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged: false,
            })
        })
    }

    handleSubmit = (e) => {
        console.log("SUBMITTED");
        let dcChargerObjectGet = null;
        let acChargerObjectGet = null;
        
        // post dc charger if there is one
        if (this.hasDc && !this.hasAc) {
            let dcPost = {
                maxPower: this.state.dcMaxPower,
                dcIsDefaultChargingCurve: false,
            }
            console.log("has dc, i am posting it");
            dcChargerPost(dcPost)
            .then(response => {
                console.log(response);
                dcChargerObjectGet = response.data;
                let dcPortPost = {
                    portname: this.state.dcPortName,
                    dcCharger: dcChargerObjectGet
                }
                dcChargerPortPost(dcPortPost)
                .then(response => {
                    console.log(response);
                    console.log("posting vehicle");
                    let vehicleObj = {
                        brand: this.state.brand,
                        brandId: this.state.brandId,
                        type: this.state.type,
                        model: this.state.model,
                        releaseYear: this.state.releaseYear,
                        usableBatterySize: this.state.usableBatterySize,
                        energyConsumption: this.state.energyConsumption,
                        acCharger: acChargerObjectGet,
                        dcCharger: dcChargerObjectGet,
                    }
        
                    vehiclePost(vehicleObj)
                    .then(response => {
                        console.log(response);
                        let vehicleObject = response.data;
                        getUserOBJECT(this.state.userId)
                        .then(response => {
                            let userObject = response.data;
                            let userVehicleObject = {
                                user: userObject,
                                vehicle: vehicleObject
                            }
                            UserVehiclePost(userVehicleObject)
                            .then(response => {
                                console.log(response);
                                window.location.href = "/myVehicles";
                            })
                            .catch(err => {
                                console.log(err);
                                this.setState({
                                    error: "Could not add vehicle"
                                })        
                            })
                        })
                        .catch(err => {
                            console.log(err);
                            this.setState({
                                error: "Could not add vehicle"
                            })        
                        })

                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not add vehicle"
                        })
                    })
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not add vehicle"
                    })
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not add vehicle"
                })
            })
        }
        
        // post ac charger if there is one
        else if (this.hasAc && !this.hasDc) {
            console.log("has ac, i am posting it");
            let acPost = {
                acUsablePhases: this.state.acUsablePhases,
                maxPower: this.state.acMaxPower
            }
            acChargerPost(acPost)
            .then(response => {
                console.log(response);
                acChargerObjectGet = response.data;

                //post ac charger port
                let acPortPost = {
                    portname: this.state.acPortName,
                    acCharger: acChargerObjectGet,
                }
                acChargerPortPost(acPortPost)
                .then(response => {
                    console.log(response);
                    console.log("posting vehicle");
                    let vehicleObj = {
                        brand: this.state.brand,
                        brandId: this.state.brandId,
                        type: this.state.type,
                        model: this.state.model,
                        releaseYear: this.state.releaseYear,
                        usableBatterySize: this.state.usableBatterySize,
                        energyConsumption: this.state.energyConsumption,
                        acCharger: acChargerObjectGet,
                        dcCharger: dcChargerObjectGet,
                    }
                    
                
                    vehiclePost(vehicleObj)
                    .then(response => {
                        console.log(response);
                        let vehicleObject = response.data;
                        getUserOBJECT(this.state.userId)
                        .then(response => {
                            let userObject = response.data;
                            let userVehicleObject = {
                                user: userObject,
                                vehicle: vehicleObject
                            }
                            UserVehiclePost(userVehicleObject)
                            .then(response => {
                                console.log(response);
                                window.location.href = "/myVehicles";
                            })
                            .catch(err => {
                                console.log(err);
                                this.setState({
                                    error: "Could not add vehicle"
                                })        
                            })
                        })
                        .catch(err => {
                            console.log(err);
                            this.setState({
                                error: "Could not add vehicle"
                            })        
                        })

                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not add vehicle"
                        })
                    })
            
                    let powerPerCharPost = {
                        acCharger: acChargerObjectGet,
                        point20: this.state.point20,
                        point23: this.state.point23,
                        point37: this.state.point37,
                        point74: this.state.point74,
                        point110: this.state.point110,
                        point160: this.state.point160,
                        point220: this.state.point220,
                        point430: this.state.point430,
                    }
                    PowerPerChargingPost(powerPerCharPost)
                    .then(response => {
                        console.log(response);
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not add vehicle"
                        })
                    })
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not add vehicle"
                    })
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not add vehicle"
                })
            })
        }

        else {
            let dcPost = {
                maxPower: this.state.dcMaxPower,
                dcIsDefaultChargingCurve: false,
            }
            console.log("has dc, i am posting it");
            dcChargerPost(dcPost)
            .then(response => {
                console.log(response);
                dcChargerObjectGet = response.data;
                let dcPortPost = {
                    portname: this.state.dcPortName,
                    dcCharger: dcChargerObjectGet
                }
                dcChargerPortPost(dcPortPost)
                .then(response => {
                    console.log(response);
                    console.log("posting vehicle");
                    console.log("has ac, i am posting it");
                    let acPost = {
                        usablePhases: this.state.acUsablePhases,
                        maxPower: this.state.acMaxPower
                    }
                    acChargerPost(acPost)
                    .then(response => {
                        console.log(response);
                        acChargerObjectGet = response.data;
        
                        //post ac charger port
                        let acPortPost = {
                            portname: this.state.acPortName,
                            acCharger: acChargerObjectGet,
                        }
                        acChargerPortPost(acPortPost)
                        .then(response => {
                            console.log(response);
                            console.log("posting vehicle");
                            let vehicleObj = {
                                brand: this.state.brand,
                                brandId: this.state.brandId,
                                type: this.state.type,
                                model: this.state.model,
                                releaseYear: this.state.releaseYear,
                                usableBatterySize: this.state.usableBatterySize,
                                energyConsumption: this.state.energyConsumption,
                                acCharger: acChargerObjectGet,
                                dcCharger: dcChargerObjectGet,
                            }
                            
                        
                            vehiclePost(vehicleObj)
                            .then(response => {
                                console.log(response);
                                let vehicleObject = response.data;
                                getUserOBJECT(this.state.userId)
                                .then(response => {
                                    let userObject = response.data;
                                    let userVehicleObject = {
                                        user: userObject,
                                        vehicle: vehicleObject
                                    }
                                    UserVehiclePost(userVehicleObject)
                                    .then(response => {
                                        console.log(response);
                                        window.location.href = "/myVehicles";
                                    })
                                    .catch(err => {
                                        console.log(err);
                                        this.setState({
                                            error: "Could not add vehicle"
                                        })        
                                    })
                                })
                                .catch(err => {
                                    console.log(err);
                                    this.setState({
                                        error: "Could not add vehicle"
                                    })        
                                })
        
                            })
                            .catch(err => {
                                console.log(err);
                                this.setState({
                                    error: "Could not add vehicle"
                                })
                            })
                    
                            let powerPerCharPost = {
                                acCharger: acChargerObjectGet,
                                point20: this.state.point20,
                                point23: this.state.point23,
                                point37: this.state.point37,
                                point74: this.state.point74,
                                point110: this.state.point110,
                                point160: this.state.point160,
                                point220: this.state.point220,
                                point430: this.state.point430,
                            }
                            PowerPerChargingPost(powerPerCharPost)
                            .then(response => {
                                console.log(response);
                            })
                            .catch(err => {
                                console.log(err);
                                this.setState({
                                    error: "Could not add vehicle"
                                })
                            })
                        })
                        .catch(err => {
                            console.log(err);
                            this.setState({
                                error: "Could not add vehicle"
                            })
                        })
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not add vehicle"
                        })
                    })
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not add vehicle"
                    })
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not add vehicle"
                })
            })
        }
        e.preventDefault();
    }

    submitActivate = () => {
        let disabled = !this.allowed();
        const submitButton = document.getElementById('add-vehicle-submit');
        if (disabled) {
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: true
            });
        }
        else {
            submitButton.style.backgroundColor="rgb(103 255 88 / 60%)";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: false
            });
        }
        console.log("submit disabled: " + this.state.submitDisabled);
        console.log(this.hasAc)
        console.log(this.hasDc)
    }

    allowed = () => {
        let acCheck = false;
        let dcCheck = false;
        if (this.hasAc) {
            acCheck = this.state.acMaxPower.length!==0 && 
                      this.state.acUsablePhases.length!==0 &&
                      this.state.point20.length!==0 &&
                      this.state.point23.length!==0 &&
                      this.state.point37.length!==0 &&
                      this.state.point74.length!==0 &&
                      this.state.point110.length!==0 &&
                      this.state.point160.length!==0 &&
                      this.state.point220.length!==0 &&
                      this.state.point430.length!==0
        }       
        if (this.hasDc) {
            dcCheck = this.state.dcMaxPower.length!==0
        }

        if (!this.hasAc && !this.hasDc) {
            this.setState({
                error: "Insert at least one charger",
            })
            return false;
        }

        else if ( (this.hasAc &&  !acCheck) || (this.hasDc && !dcCheck)) {
            console.log("hasAc: " + this.hasAc);
            console.log("allowed Ac: " + acCheck);
            console.log("hasDc: " + this.hasDc);
            console.log("allowed Dc: " + dcCheck);
            this.setState({
                error: "Insert compulsory info",
            })
            return false;
        }
        this.setState({
            error: null,
        })
        return true;
    }

    acChange = () => {
        this.hasAc = !this.hasAc;
        console.log("hasAc: " + this.hasAc)
        this.submitActivate();
    }

    dcChange = () => {
        this.hasDc = !this.hasDc;
        console.log("hasDc: " + this.hasDc)
        this.submitActivate();
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
                    message="You need to create an account to add your vehicles"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="StationOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a vehicle owner to add your vehicles"
                    linkMessage="Log out and create an account as a vehicle owner"
                    link="/register" 
                />
            )
        }
        else {      
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="add-station-specific-title">
                            <div className="station-info-title">
                                Add vehicle
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}    
                            </div> 
                        </div>

                        <div className="color2">Move your cursor over a field to for an explanation of its role</div>

                        <form id="add-vehicle-info-container">

                            <div className="add-vehicle-first-container flex-layout">                        
                                <input className="add-station-input flex-item-medium" title="Brand"id="add-vehicle-brand" placeholder="Brand" type="text" name="brand" value={this.state.brand} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Brand id" id="add-vehicle-brand-id" placeholder="Brand Id" name="brandId" type="text" value={this.state.brandId} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <select className="add-station-input flex-item-medium"title="Type" id="add-vehice-type" placeholder="Type" name="type" value={this.state.type} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                    <option value="bev">bev</option>
                                    <option value="phev">phev</option>
                                </select>                       
                                <input className="add-station-input flex-item-medium" title="Model" id="add-vehicle-model" placeholder="Model" name="model" type="text" value={this.state.model} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" title="Release Year" id="add-vehicle-release-year" placeholder="Release Year" name="releaseYear" type="number" min="2010" max="2021" step="1" value={this.state.releaseYear} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" title="Usable Battery Size" id="add-vehicle-usable-battery-size" placeholder="Usable Battery size" name="usableBatterySize" type="number" min="0" step=".1" value={this.state.usableBatterySize} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" title="Energy Consumption" id="add-vehicle-energy-consumption" placeholder="Energy Consumption" name="energyConsumption" type="number" min="0" step=".1" value={this.state.energyConsumption} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                            </div>    

                            <div className="chargers-radios-container flex-layout">
                                <div className="flex-item one-radio-container">
                                    <label className="row-1 column-1 charger-title color2" htmlFor="ac charger">Ac charger</label>
                                    <input className="row-1 column-2 radio-charge" type="radio" name="ac charger" checked={this.hasAc} value={this.hasAc} onClick={this.acChange} />
                                </div>
                                <div className="flex-item one-radio-container">
                                    <label className="row-1 column-3 charger-title color2" htmlFor="dc charger">Dc charger</label>
                                    <input className="row-1 column-4 radio-charge" type="radio" name="dc charger" checked={this.hasDc} value={this.hasDc} onClick={this.dcChange} />
                                </div>
                            </div>
                            
                            <div className="chargers-inputs flex-layout">

                                <div className="ac-charger-inputs flex-layout flex-item" hidden={!this.hasAc}>
                                    <div className="row-1 column-1 charger-title color2 flex-item-expand" hidden={!this.hasAc}>Ac charger basics and power per charging point</div> 
                                    <input className="add-station-input flex-item" title="Usable Phases" id="add-vehicle-ac-usable-phases" placeholder="Ac charger usable phases*" name="acUsablePhases" type="number" min="0" max="3" step="1" value={this.state.acUsablePhases} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item" title="Max Power" id="add-vehicle-ac-max-power" placeholder="Ac charger max power*" name="acMaxPower" type="number" min="0" step=".1" value={this.state.acMaxPower} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <select className="add-station-input flex-item" title="Portname" id="add-vehice-ac-portname" placeholder="Ac charger portname*" name="acPortName" value={this.state.acPortName} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                        <option value="type1">type1</option>
                                        <option value="type2">type2</option>
                                    </select>
                                    <input className="add-station-input flex-item-small" title="Power point at 2.0"  id="add-vehicle-point" placeholder="Ac charger power point 2.0*" name="point20" type="number" min="0" step=".1" value={this.state.point20} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 2.3"  id="add-vehicle-point" placeholder="Ac charger power point 2.3*" name="point23" type="number" min="0" step=".1" value={this.state.point23} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 3.7"  id="add-vehicle-point" placeholder="Ac charger power point 3.7*" name="point37" type="number" min="0" step=".1" value={this.state.point37} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 7.4"  id="add-vehicle-point" placeholder="Ac charger power point 7.4*" name="point74" type="number" min="0" step=".1" value={this.state.point74} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 11.0" id="add-vehicle-point" placeholder="Ac charger power point 11.0*" name="point110" type="number" min="0" step=".1" value={this.state.point110} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 16.0" id="add-vehicle-point" placeholder="Ac charger power point 16.0*" name="point160" type="number" min="0" step=".1" value={this.state.point160} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 22.0" id="add-vehicle-point" placeholder="Ac charger power point 22.0*" name="point220" type="number" min="0" step=".1" value={this.state.point220} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input flex-item-small" title="Power point at 43.0" id="add-vehicle-point" placeholder="Ac charger power point 43.0*" name="point430" type="number" min="0" step=".1" value={this.state.point430} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                </div>

                                <div className="dc-charger-inputs column-2 row-2 flex-layout flex-item" hidden={!this.hasDc}>
                                    <div className="row-1 column-2 charger-title flex-item-expand color2" hidden={!this.hasDc}>Dc charger basics</div> 
                                    <input className="add-station-input  flex-item" title="Max Power" id="add-vehicle-dc-max-power" placeholder="Dc charger max power*" name="dcMaxPower" type="number" min="0" step=".1" value={this.state.dcMaxPower} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <select className="add-station-input flex-item" title="Portname" id="add-vehice-dc-portname" placeholder="Dc charger portname*" name="dcPortName" value={this.state.dcPortName} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                        <option value="chademo">chademo</option>
                                        <option value="ccs">ccs</option>
                                        <option value="tesla_ccs">tesla ccs</option>
                                    </select>

                                </div>
                            </div>
                            
                        </form>
                            <input id="add-vehicle-submit" title="Add vehicle" className="row-4 submit-button my-button margin-top-small" name="submit" type="submit" value="Add vehicle" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>

                    </div>
                </div>
            )
        }
    }
    
}

export default AddVehicle;