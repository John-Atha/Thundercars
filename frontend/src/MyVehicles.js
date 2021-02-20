import React, { useDebugValue } from 'react';
import './MyVehicles.css';
import {getVehicles} from './api'
import MyNavBar from './MyNavbar'; 
import logo from './images/thundera.png';

class Vehicle extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            vehId: this.props.vehId,
            brand: this.props.brand,
            type: this.props.type,
            model: this.props.model,
            releaseYear: this.props.releaseYear,
            usableBatterySize: this.props.usableBatterySize,
            energyConsumption: this.props.energyConsumption,
            acCharging: this.props.acCharging,
            acChargers: this.props.acChargers,
            dcCharging: this.props.dcCharging,
            dcChargers: this.props.dcChargers
        }
    }

    render() {
        return ( 
            <div className="vehicle-details-table">
                <div id="vehicle-titles">Brand: </div><div id="vehicle-content">{this.state.brand}</div>
                <div id="vehicle-titles">Model: </div><div id="vehicle-content">{this.state.model}</div>
                <div id="vehicle-titles">Type: </div><div id="vehicle-content">{this.state.type}</div>
                <div id="vehicle-titles">Release Year: </div><div id="vehicle-content">{this.state.releaseYear}</div>
                <div id="vehicle-titles">Usable Battery Size: </div><div id="vehicle-content">{this.state.usableBatterySize} kWh</div>
                <div id="vehicle-titles">Energy Consumption: </div><div id="vehicle-content">{this.state.energyConsumption} Wh/km</div>
                <div id="vehicle-titles">AC Charging: </div><div id="vehicle-content">{this.state.acCharging}</div>
                <div id="vehicle-titles">AC Charger Type(s): </div><div id="vehicle-content">{this.state.acChargers}</div>
                <div id="vehicle-titles">DC Charging: </div><div id="vehicle-content">{this.state.dcCharging}</div>
                <div id="vehicle-titles">DC Charger Type(s): </div><div id="vehicle-content">{this.state.dcChargers}</div>
            </div>
        );
    }

}

class MyVehicles extends React.Component {
    
    constructor(props){
        super(props);
        this.state={
            userId: 102,
            error: null,
            vehicles: []
        }

        this.attr1Name = "Release Year"
        this.attr2Name = "Usable Battery Size"
        this.attr3Name = "Energy Consumption"
        this.attr4Name = "Ac Charging"
        this.attr5Name = "Ac Charger Ports"
        this.attr6Name = "Dc Charging"
        this.attr7Name = "Dc Charger Ports"
    }    

    componentDidMount () {
        getVehicles(this.state.userId)
        .then(response => {
            console.log(response);
            this.setState({
                vehicles: response.data["Vehicles List"]
            })
            console.log(this.state.vehicles);
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        if(10!==10) {
            window.location.href ="/";
        }
        else{
            return (
                <div className="allPage">
                    <MyNavBar />
                <div className="vehicle-page-container more-blur center-content">
                    <div className="vehicle-title-container" id="vehicle-list-title">
                        My Vehicles
                    </div>
                    <div className="vehicle-details-container">
                        {
                            this.state.vehicles.map((value, key)=> {
                                console.log(value+": "+key);
                                let sizeofac = value[this.attr5Name].length;
                                let sizeofdc = value[this.attr7Name].length;
                                let dcchargers = "";
                                let acchargers = "";
                                for(let i = sizeofac; i > 0; i--) {
                                    if(i == 1) {
                                        acchargers = acchargers+value[this.attr5Name][i-1]["Port Name"];
                                    }
                                    else {
                                        acchargers = acchargers+", "+value[this.attr5Name][i-1]["Port Name"];
                                    }
                                }
                                for(let i = sizeofdc; i > 0; i--) {
                                    if(sizeofdc == 1) {
                                        dcchargers = dcchargers+value[this.attr7Name][i-1]["Port Name"];
                                    }
                                    else {
                                        dcchargers = dcchargers+", "+value[this.attr7Name][i-1]["Port Name"];
                                    }
                                }
                                if (dcchargers == "") {
                                    dcchargers = "Undefined";
                                }
                                if (acchargers == "") {
                                    acchargers = "Undefined";
                                }
                                return(<Vehicle
                                    key={key}
                                    brand={value.Brand} 
                                    model={value.Model}
                                    type={value.Type}
                                    releaseYear={value[this.attr1Name]}
                                    usableBatterySize={value[this.attr2Name]}
                                    energyConsumption={value[this.attr3Name]*10}
                                    acCharging={value[this.attr4Name]}
                                    acChargers={acchargers}
                                    dcCharging={value[this.attr6Name]}
                                    dcChargers={dcchargers}
                                />)
                            })
                        }                    
                    </div>
                </div>
                </div>
            );
        }
    }
}

export default MyVehicles