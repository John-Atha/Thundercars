import React from 'react';
import './Profile.css';
import MyNavbar from './MyNavbar';
import icon from './images/user-icon.png';
import {getUserProfile, getStationOwnerProfile, UserDelete, stationOwnerDelete, userDelete } from './api';

class Profile extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            success: null,
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
        this.delete = this.delete.bind(this);
        this.update = this.update.bind(this);
        this.logout = this.logout.bind(this);
    }

    logout = () => {
        localStorage.removeItem('userId');
        localStorage.removeItem('role');
        window.location.href="/";
    }


    delete = () => {
        userDelete(this.state.userId)
        .then(response => {
            console.log(response);
            this.setState({
                success: "Account deleted successfully, you are being redirected to home page"
            })
            this.logout();
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not delete account, please try again later"
            })
        })
    }

    update = () => {

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
                        
                        {
                            this.state.error && 
                                <div className="error-message">{this.state.error}</div>
                        }

                        {
                            this.state.success &&
                                <div className="success-message">{this.state.success}</div>
                        }
                        
                        {
                            !this.state.error && !this.state.success && 
                                <div className="specific-title">
                                    <div className="station-info-title">{this.state.username}</div> 
                                </div>
                        }

                        {
                            !this.state.error && !this.state.success && 
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

                            <div className="profile-buttons-container flex-layout-column flex-item margin-top-small">
                                <button className="update-button my-button flex-item-smaller" onClick={this.update}>Update</button>
                                <button className="delete-button my-button flex-item-smaller" onClick={this.delete}>Delete account</button>

                            </div>

                        
                        </div>
                        }
                    </div>

                </div>
            )


        }
        
    }

}

export default Profile;