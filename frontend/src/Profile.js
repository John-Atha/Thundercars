import React from 'react';
import './Profile.css';
import MyNavbar from './MyNavbar';
import icon from './images/user-icon.png';
import {getUserProfile, getStationOwnerProfile, getUserOBJECT, stationOwnerObjectGet } from './api';

class Profile extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            username: null,
            email: null,
            firstName: null,
            lastName: null,
            dateOfBirth: null,
            address1: null,
            town: null,
            stateOrProvince: null,
            postcode: null,
            tel1: null,
            tel2: null,
            country: null,
            continent: null,
        }
    }


    componentDidMount() {
        if (this.state.role==="VehicleOwner") {
            getUserProfile(this.state.userId)
            .then(response => {
                console.log(response);
                this.setState({
                    username: response.data.Username,
                    email: response.data.Email,
                    firstName: response.data["First Name"],
                    lastName: response.data["Last Name"],
                    dateOfBirth: response.data["Date Of Birth"],
                    address1: response.data["AddressLine 1"],
                    town: response.data.Town,
                    stateOrProvince: response.data["State Or Province"],
                    postcode: response.data.Postcode,
                    tel1: response.data["Contact Telephone 1"],
                    tel2: response.data["Contact Telephone 2"],
                    country: response.data.Country,
                    continent: response.data.Continent,
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "We couldn't find your info, please try again later"
                })
            })

        }

        else if (this.state.role==="StationOwner") {
            getStationOwnerProfile(this.state.userId)
            .then(response => {
                console.log(response);
            })
            .catch(err => {
                console.log(err);
            })


        }


    }

    render() {
        
        if (!this.state.userId) {
            window.location.href = "/";
        }

        else {
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            <div className="station-info-title">{this.state.username}</div> 
                        </div>
                        <div className="profile-container flex-layout padding-bottom">
                            <div className="profile-icon-container margin-top-small flex-item-small">
                                <img src={icon}/>
                            </div>
                            <div className="profile-basic-info-container box-colors margin-top-small flex-layout">
                                <div className="profile-secondary-info-container padding-bottom flex-item">
                                    <div className="color2 line">Email:  
                                        <i className="white"> {this.state.email}</i>
                                    </div>
                                    <div className="color2 line">First Name: 
                                        <i className="white"> {this.state.firstName}</i>
                                    </div>
                                    <div className="color2 line">Last Name: 
                                        <i className="white"> {this.state.lastName}</i>
                                    </div>
                                </div>
                                
                                <div className="profile-secondary-info-container padding-bottom flex-item">
                                    <div className="color2 line">Date of Birth: 
                                        <i className="white"> {this.state.dateOfBirth}</i>
                                    </div>
                                    <div className="color2 line">Address line: 
                                        <i className="white"> {this.state.address1}</i>
                                    </div>
                                    <div className="color2 line">Town: 
                                        <i className="white"> {this.state.town}</i>
                                    </div>
                                    <div className="color2 line">State/Province: 
                                        <i className="white"> {this.state.stateOrProvince}</i>
                                    </div>
                                    <div className="color2 line">Postcode: 
                                        <i className="white"> {this.state.postcode}</i>
                                    </div>
                                    <div className="color2 line">Telephone 1: 
                                        <i className="white"> {this.state.tel1}</i>
                                    </div>
                                    <div className="color2 line">Telephone 2: 
                                        <i className="white"> {this.state.tel2}</i>
                                    </div>
                                    <div className="color2 line">Country: 
                                        <i className="white"> {this.state.country}</i>
                                    </div>
                                    <div className="color2 line">Continent: 
                                        <i className="white"> {this.state.continent}</i>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            )


        }
        
    }

}

export default Profile;