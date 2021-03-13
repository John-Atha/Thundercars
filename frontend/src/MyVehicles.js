import React from 'react';
import './MyVehicles.css';
import {getVehicles, isLogged} from './api'
import MyNavBar from './MyNavbar'; 
import UnAuthorized from './UnAuthorized';

class SpecVehicle extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            vehId: this.props.vehId,
            brand: this.props.brand,
            type: this.props.type,
            index: this.props.index,
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
            <div className="one-station-container center-content box-colors flex-item">
                <h5 className="color2 center-content">Vehicle {this.state.index}: General Info</h5>
                <div className="station-page-info-container center-content">
                    <div className="station-info-title darker">Brand: </div><div className="station-info darker">{this.state.brand}</div>
                    <div className="station-info-title">Model: </div><div className="station-info">{this.state.model}</div>
                    <div className="station-info-title darker">Type: </div><div className="station-info darker">{this.state.type}</div>
                </div>
                <button className="more-details-button my-button center-content" onClick={this.vehiclePageRedirect}>More details</button>
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
            vehicles: [],
            logged: false,
        }
    }    

    componentDidMount () {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
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
                this.setState({
                    error: "You don't own any vehicles"
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

    render() {
        if(!this.state.userId || !this.state.logged) {
            return (
                    <UnAuthorized 
                        message="You need to create an account to have your vehicles listing page"
                        linkMessage="Create an account"
                        link="/register" 
                    />
            )
        }
        else if(localStorage.getItem('role')==="StationOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a vehicle owner to have your vehicles listing page"
                    linkMessage="Log out and create an account as a vehicle owner"
                    link="/register"
                />
            )

        }
        else {

            return (
                <div className="allPage">
                    <MyNavBar />
                <div className="general-page-container more-blur center-content padding-bottom">
                    <h5 className="orangeColor specific-title">
                        My vehicles
                    </h5>
                    
                    {this.state.error!==null && 
                        <div className="error-message margin-top">
                            {this.state.error}<br></br><br></br>
                            <a href="/addVehicle">Add one</a>
                        </div>
                    }

                    {this.state.error===null &&                     
                        <div id="spots-container" className="fix-width flex-layout">
                        {
                            this.state.vehicles.map((value, key, index)=> {
                                console.log(value+": "+key);
                                return(<SpecVehicle
                                    key={key}
                                    index={key+1}
                                    vehId={value.Vehicle}
                                    brand={value.Brand} 
                                    model={value.Model}
                                    type={value.Type}
                                />)
                            })
                        }                    
                    </div>
                    }
                </div>
                </div>
            );
                }
    }
}

export default MyVehicles