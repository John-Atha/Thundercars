import React from 'react';
import './MyVehicles.css';
import {getVehicles} from './api'
import MyNavBar from './MyNavbar'; 

class SpecVehicle extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            vehId: this.props.vehId,
            brand: this.props.brand,
            type: this.props.type,
            model: this.props.model
        }
        this.vehiclePageRedirect = this.vehiclePageRedirect.bind(this);
    }

    vehiclePageRedirect = () => {
        let id=this.state.vehId;
        window.location.href=`/vehicles/${id}`;
    }

    render() {
        return ( 
            <div className="one-station-container center-content">
                <div className="station-page-info-container">
                    <div className="station-info-title darker">Brand: </div><div className="station-info darker">{this.state.brand}</div>
                    <div className="station-info-title">Model: </div><div className="station-info">{this.state.model}</div>
                    <div className="station-info-title darker">Type: </div><div className="station-info darker">{this.state.type}</div>
                </div>
                <a className="station-link orangeColor center-content" onClick={this.vehiclePageRedirect}>For details click here</a>
            </div>
        );
    }

}

class MyVehicles extends React.Component {
    constructor(props){
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            error: null,
            vehicles: []
        }
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
        if((!localStorage.getItem('userId'))) {
            console.log("User not logged in error");
            setTimeout(() =>{window.location.href = "/"},10000);
            return (
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" id="error-message">
                        It seems that you are not logged in...
                        You will be redirected to the login page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else if(localStorage.getItem('role')=="StationOwner") {
            console.log("Station Owner Error");
            setTimeout(() =>{window.location.href = "/home"},10000);
            return(
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" id="error-message">
                        It seems that you are logged in as a Station Owner...<br></br>
                        Log in to your Vehicle Owner account to view your vehicles.<br></br>
                        You will be redirected to the Home page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else {
            let vehicle_title = "My Vehicles";
            if(this.state.vehicles.length===1){
                vehicle_title = "My Vehicle";
            }
            return (
                <div className="allPage">
                    <MyNavBar />
                <div className="general-page-container more-blur center-content">
                    <h5 className="orangeColor specific-title">
                        {vehicle_title}
                    </h5>
                    <div id="spots-container">
                        {
                            this.state.vehicles.map((value, key)=> {
                                console.log(value+": "+key);
                                return(<SpecVehicle
                                    key={key}
                                    vehId={value.Vehicle}
                                    brand={value.Brand} 
                                    model={value.Model}
                                    type={value.Type}
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