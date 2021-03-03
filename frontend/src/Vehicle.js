import React from 'react';
import './Vehicle.css';
import {getOneVehicle, getAllUserVehicle, UserVehicleDelete} from './api'
import MyNavBar from './MyNavbar'; 

class Vehicle extends React.Component {
    
    constructor(props){
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            vehId: this.props.id,
            brand: null,
            type: null,
            model: null,
            releaseYear: null,
            usableBatterySize: null,
            energyConsumption: null,
            acCharging: null,
            acChargerId: null,
            acChargers: null,
            acChargerTypes: null,
            dcChargerId: null,
            dcCharging: null,
            dcChargers: null,
            dcChargerTypes: null,
            error: null,
        }

        this.attr1Name = "Release Year"
        this.attr2Name = "Usable Battery Size"
        this.attr3Name = "Energy Consumption"
        this.attr4Name = "Ac Charging"
        this.attr5Name = "Ac Charger Ports"
        this.attr6Name = "Dc Charging"
        this.attr7Name = "Dc Charger Ports"
        this.acChargerPageRedirect = this.acChargerPageRedirect.bind(this);
        this.deleteVehicle = this.deleteVehicle.bind(this);
    }    

    componentDidMount () {
        getOneVehicle(this.state.userId,this.state.vehId)
        .then(response => {
            console.log(response);
            this.setState({
                brand: response.data.Brand ? (response.data.Brand.length!==0 ? response.data.Brand : "-") : "-",
                type: response.data.Type ? (response.data.Type.length!==0 ? response.data.Type : "-") : "-",
                model : response.data.Model ?(response.data.Model.length!==0 ? response.data.Model : "-"): "-",
                releaseYear : response.data[this.attr1Name] ? (response.data[this.attr1Name].length !==0 ? response.data[this.attr1Name] : "-"):"-",
                usableBatterySize : response.data[this.attr2Name] ? (response.data[this.attr2Name].length !==0 ? response.data[this.attr2Name] : "-"):"-",
                energyConsumption :response.data[this.attr3Name] ? (response.data[this.attr3Name].length !==0 ? response.data[this.attr3Name] : "-"):"-",
                acCharging : response.data[this.attr4Name] ? (response.data[this.attr4Name].length !==0 ? response.data[this.attr4Name] : "-"):"-",
                acChargers : response.data[this.attr5Name] ? (response.data[this.attr5Name].length !==0 ? response.data[this.attr5Name] : "-"):"-",
                dcCharging : response.data[this.attr6Name] ? (response.data[this.attr6Name].length !==0 ? response.data[this.attr6Name] : "-"):"-",
                dcChargers : response.data[this.attr7Name] ? (response.data[this.attr7Name].length !==0 ? response.data[this.attr7Name] : "-"):"-",
                acChargerId : response.data.AcChargers[0].AcCharger ? (response.data.AcChargers[0].AcCharger.length !== 0 ? response.data.AcChargers[0].AcCharger : "-"):"-",
                dcChargerId : response.data.DcChargers[0].DcCharger ? (response.data.DcChargers[0].DcCharger.length !== 0 ? response.data.DcChargers[0].DcCharger : "-"):"-"
            })

            let sizeofac = this.state.acChargers.length;
            let sizeofdc = this.state.dcChargers.length;
            let dcchargers = "";
            let acchargers = "";
            for(let i = sizeofac; i > 0; i--) {
                if(i == 1) {
                    acchargers = acchargers+this.state.acChargers[i-1]["Port Name"];
                }
                else {
                    acchargers = acchargers+this.state.acChargers[i-1]["Port Name"]+", ";
                }
            }
            for(let i = sizeofdc; i > 0; i--) {
                if(i === 1) {
                    dcchargers = dcchargers+this.state.dcChargers[i-1]["Port Name"];
                }
                else {
                    dcchargers = dcchargers+this.state.dcChargers[i-1]["Port Name"]+", ";
                }
            }
            if (dcchargers === "") {
                dcchargers = "Undefined";
            }
            if (acchargers === "") {
                acchargers = "Undefined";
            }

            this.setState({
                acChargerTypes : acchargers,
                dcChargerTypes : dcchargers
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not find information about this vehicle (probably you don't own it)"
            })
        })
    }

    acChargerPageRedirect = () => {
        let id = this.state.acChargerId;
        window.location.href=`/acchargers/${id}`;
    }

    deleteVehicle = () => {
        console.log("chose to delete")
        getAllUserVehicle()
        .then(response => {
            console.log(response);
            let userVehiclesList = response.data;
            // find userHasVehicle objects that referr to current user
            for (let i=0; i<userVehiclesList.length; i++) {
                if (parseInt(userVehiclesList[i].user.id)===parseInt(this.state.userId) && parseInt(userVehiclesList[i].vehicle.id)===parseInt(this.state.vehId)) {
                    UserVehicleDelete(userVehiclesList[i].id)
                    .then(response => {
                        console.log(response);
                        this.setState({
                            error: "Deleted succesfully"
                        })
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not delete vehicle"
                        })
                    })
                }
            }            
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not delete vehicle"
            })
        })
    }
    
    render() {
        if((!localStorage.getItem('userId'))) {
            console.log("User not logged in error");
            setTimeout(() =>{window.location.href = "/"},10000);
            return (
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" className="error-message">
                        It seems that you are not logged in...
                        You will be redirected to the login page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else if(localStorage.getItem('role')==="StationOwner") {
            console.log("Station Owner Error");
            setTimeout(() =>{window.location.href = "/home"},10000);
            return(
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" className="error-message">
                        It seems that you are logged in as a Station Owner...<br></br>
                        Log in to your Vehicle Owner account to view your vehicles.<br></br>
                        You will be redirected to the Home page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else {
            return (
                <div className="allPage">
                    <MyNavBar />
                <div className="general-page-container more-blur center-content padding-bottom">
                    <div className="specific-title orangeColor">
                        Vehicle {this.state.vehId}
                    </div>
                        
                    {!this.state.error &&
                        <div className="station-page-info-container box-colors margin-top-small center-content">
                            <div className="station-info-title darker">Brand: </div><div className="station-info darker">{this.state.brand}</div>
                            <div className="station-info-title">Model: </div><div className="station-info">{this.state.model}</div>
                            <div className="station-info-title darker">Type: </div><div className="station-info darker">{this.state.type}</div>
                            <div className="station-info-title">Release Year: </div><div className="station-info">{this.state.releaseYear}</div>
                            <div className="station-info-title darker">Usable Battery Size(kWh): </div><div className="station-info darker">{this.state.usableBatterySize} kWh</div>
                            <div className="station-info-title">Energy Consumption(Wh/km): </div><div className="station-info">{this.state.energyConsumption}</div>
                            <div className="station-info-title darker">AC Charging: </div><div className="station-info darker">{this.state.acCharging}</div>
                            <div className="station-info-title">AC Charger Type(s): </div><a className="station-link station-info" onClick={this.acChargerPageRedirect}>{this.state.acChargerTypes}</a>
                            <div className="station-info-title darker">DC Charging: </div><div className="station-info darker">{this.state.dcCharging}</div>
                            <div className="station-info-title">DC Charger Type(s): </div><div className="station-info">{this.state.dcChargerTypes}</div>
                        </div>            
                    }
                    {!this.state.error &&
                        <div className="station-update-button-container center-content">
                            <button className="vehicle-delete-button" onClick={this.deleteVehicle}>
                                Delete
                            </button>
                        </div>
                    }
                    {this.state.error!==null && ( 
                        <div className="error-message margin-top">
                            {this.state.error}
                        </div>
                    )}

                </div>
                </div>
            );
        }
    }
}

export default Vehicle;