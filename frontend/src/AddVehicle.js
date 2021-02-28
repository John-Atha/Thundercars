import React from 'react';
import './AddVehicle.css';
import MyNavbar from './MyNavbar';
import {getPowerPerCharging} from './api';

class AddVehicle extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            brand: "",
            brandId: "",
            type: "",
            model: "",
            releaseYear: "",
            usableBatterySize: "",
            energyConsumption: "",
            acUsablePhases: "",
            acMaxPower: "",
            acPortName: "",
            acPowerPerChargingPoins: [{}],
            acPowerPerChargingPoint: "",
            dcMaxPower: "",
            dcIsDefaultChargingCurve: "",
            dcPortName: "",
            point20: 2.0,
            point23: 2.3,
            point37: 3.7,
            point74: 7.4,
            point110: 11.0,
            point160: 11.0,
            point220: 11.0,
            point430: 11.0,
            hasAc: true,
            hasDc: true,
        }
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.allowed = this.allowed.bind(this);
        this.acChange = this.acChange.bind(this);
        this.dcChange = this.dcChange.bind(this);
    }

    handleSubmit = () => {

    }

    allowed = () => {

    }

    acChange = () => {
        this.setState({
            hasAc: !this.state.hasAc,
        })
    }

    dcChange = () => {
        this.setState({
            hasDc: !this.state.hasDc,
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

        if (!this.state.userId || this.state.role!=="VehicleOwner") {
            window.location.href="/";
        }
        else {      
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom-more">
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

                        <form id="add-vehicle-info-container">

                            <div className="add-vehicle-first-container row-1">                        
                                <input className="add-station-input row-1 column-1" id="add-vehicle-brand" placeholder="Brand" type="text" name="brand" value={this.state.brand} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input row-1 column-2" id="add-vehicle-brand-id" placeholder="Brand Id" name="brandId" type="text" value={this.state.brandId} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <select className="add-station-input" id="add-vehice-type" placeholder="Type" name="type" value={this.state.type} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                    <option value="bev">bev</option>
                                    <option value="phev">phev</option>
                                </select>                       
                                <input className="add-station-input" id="add-vehicle-model" placeholder="Model" name="model" type="text" value={this.state.model} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input" id="add-vehicle-release-year" placeholder="Release Year" name="releaseYear" type="number" min="2010" max="2021" step="1" value={this.state.releaseYear} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input" id="add-vehicle-usable-battery-size" placeholder="Usable Battery size" name="usableBatterySize" type="number" min="0" step=".1" value={this.state.usableBatterySize} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input" id="add-vehicle-energy-consumption" placeholder="Energy Consumption" name="energyConsumption" type="number" min="0" step=".1" value={this.state.energyConsumption} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                            </div>    

                            <div className="chargers-radios-container row-2">
                                <label  className="row-1 column-1 charger-title" htmlFor="ac charger">Ac charger</label>
                                <input className="row-1 column-2 radio-charge" type="radio" name="ac charger" checked={this.state.hasAc} value={this.state.hasAc} onClick={this.acChange}/>
                                <label className="row-1 column-3 charger-title" htmlFor="dc charger">Dc charger</label>
                                <input className="row-1 column-4 radio-charge" type="radio" name="dc charger" checked={this.state.hasDc} value={this.state.hasDc} onClick={this.dcChange} />
                            </div>

                            
                            
                            
                            <div className="chargers-inputs row-3">
                                <div className="row-1 column-1 charger-title">Ac charger basics and power per charging point</div> 
                                <div className="ac-charger-inputs column-1 row-2">
                                    <input className="add-station-input" id="add-vehicle-ac-usable-phases" placeholder="Ac charger usable phases" name="acUsablePhases" type="number" min="0" max="3" step="1" value={this.state.acUsablePhases} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <input className="add-station-input" id="add-vehicle-ac-max-power" placeholder="Ac charger max power" name="acMaxPower" type="number" min="0" step=".1" value={this.state.acMaxPower} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <select className="add-station-input" id="add-vehice-ac-portname" placeholder="Ac charger portname" name="acPortName" value={this.state.acPortName} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                        <option value="type1">type1</option>
                                        <option value="type2">type2</option>
                                    </select>
                                    <div className="add-station-input row-4" id="add-vehice-ac-power-per-charging" placeholder="Ac charger power per charging point" name="acPowerPerChargingPoint" value={this.state.acPowerPerChargingPoint} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 2.0" name="point20" type="number" min="0" step=".1" value={this.state.point20} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 2.3" name="point23" type="number" min="0" step=".1" value={this.state.point23} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 3.7" name="point37" type="number" min="0" step=".1" value={this.state.point37} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 7.4" name="point74" type="number" min="0" step=".1" value={this.state.point74} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 11.0" name="point110" type="number" min="0" step=".1" value={this.state.point110} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 16.0" name="point160" type="number" min="0" step=".1" value={this.state.point160} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 22.0" name="point220" type="number" min="0" step=".1" value={this.state.point220} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                        <input className="add-station-input" id="add-vehicle-point" placeholder="Ac charger power point 43.0" name="point430" type="number" min="0" step=".1" value={this.state.point430} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    </div>
                                </div>

                                <div className="row-1 column-2 charger-title">Dc charger basics</div> 
                                <div className="dc-charger-inputs column-2 row-2">
                                    <input className="add-station-input" id="add-vehicle-dc-max-power" placeholder="Dc charger max power" name="dcMaxPower" type="number" min="0" step=".1" value={this.state.dcMaxPower} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                    <select className="add-station-input" id="add-vehice-dc-portname" placeholder="Dc charger portname" name="dcPortName" value={this.state.dcPortName} onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                        <option value="chademo">chademo</option>
                                        <option value="ccs">ccs</option>
                                        <option value="tesla_ccs">tesla ccs</option>
                                    </select>

                                </div>
                            </div>
                            
                            <input id="add-vehicle-submit" className="row-4" name="submit" type="submit" value="Submit" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>

                        </form>

                    </div>
                </div>
            )
        }
    }
    
}

export default AddVehicle;