import React from 'react';
import './UpdateProfile.css';
import md5 from 'crypto-js/md5';
import { getUserOBJECT, stationOwnerOBJECTGet, countriesGet, userAddressPut, stationOwnerPut, stationOwnerPutNoPass, userPutWithPass, userPutNoPass} from './api';
import MyNavbar from './MyNavbar';
import icon from './images/user-icon.png';
import UnAuthorized from './UnAuthorized';

class UpdateProfile extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            username: "",
            password: "",
            confirmPassword: "",
            email: "",
            firstName: "",
            lastName: "",
            dateOfBirth: "",
            adderssId: "",
            country: "",
            countries: [],
            addrLine: "",
            town: "",
            stateOrProvince: "",
            postCode: "",
            tel1: "",
            tel2: "",
            submitDisabled: true,
            error: null,
            success: null,
            apiKey: null,
            passChanged: false,
        }
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.submitActivate = this.submitActivate.bind(this);
        this.allowed = this.allowed.bind(this);
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        if (name==="password") {
            this.setState({
                passChanged: true,
                [name]: value,
            })
        }
        else {
            this.setState({
                [name]: value,
            })
        }
        console.log(name+":  "+value);
    }

    handleSubmit = (e) => {
        console.log("SUBMITTED");
        let countryStr = this.state.country;
        let countryParts = countryStr.split(",,");      
        let userAddressPutObj = {
            id: this.state.addressId,
            postcode: this.state.postCode,
            town: this.state.town,
            stateOrProvince: this.state.stateOrProvince,
            contactTelephone1: this.state.tel1,
            contactTelephone2: this.state.tel2,
            userAddressLine1: this.state.addrLine,
            country: {
                id: countryParts[0],
                title: countryParts[1],
                isocode: countryParts[2],
                continentCode: countryParts[3],
            }
        }
        let userAddressGetObj = null;
        userAddressPut(this.state.addressId, userAddressPutObj)
        .then(response => {
            console.log(response);
            userAddressGetObj = response.data;
            let addressAttributeName = null;
            if (this.state.role==="VehicleOwner") {
                addressAttributeName = "userAddress";
            }
            else if (this.state.role==="StationOwner") {
                addressAttributeName = "address";
            }

            let userPutObj = null;

            if (this.state.passChanged===true) {
                userPutObj = {
                    id: this.state.userId,
                    username: this.state.username,
                    password: md5(this.state.password).toString(),
                    emailAddr: this.state.email,
                    firstName: this.state.firstName,
                    lastName: this.state.lastName,
                    dateOfBirth: this.state.dateOfBirth,
                    apiKey: this.state.apiKey,
                    [addressAttributeName]: userAddressGetObj,
                }
            }

            else {
                userPutObj = {
                    id: this.state.userId,
                    username: this.state.username,
                    emailAddr: this.state.email,
                    firstName: this.state.firstName,
                    lastName: this.state.lastName,
                    dateOfBirth: this.state.dateOfBirth,
                    apiKey: this.state.apiKey,
                    [addressAttributeName]: userAddressGetObj,
                }
            }
            console.log("posting the address object:");
            console.log(userPutObj);

            if (this.state.role==="VehicleOwner") {
                if (this.state.passChanged===true) {
                    userPutWithPass(this.state.userId, userPutObj)
                    .then(response=> {
                        console.log(response);
                        this.setState({
                            success: "Updated successfully",
                            error: null,
                        })
                        window.location.href="profile"
                    })
                    .catch(err=> {
                        console.log(err);
                        this.setState({
                            error: "Could not update profile, maybe the username/email you entered are used by another account",
                        })
                    })
                }
                else {
                    userPutNoPass(this.state.userId, userPutObj)
                    .then(response=> {
                        console.log(response);
                        this.setState({
                            success: "Updated successfully",
                            error: null,
                        })
                        window.location.href="profile"
                    })
                    .catch(err=> {
                        console.log(err);
                        this.setState({
                            error: "Could not update profile, maybe the username/email you entered are used by another account",
                        })
                    })
                }
            
            }
            else if (this.state.role==="StationOwner") {
                if (this.state.passChanged===true) {
                    stationOwnerPut(this.state.userId, userPutObj)
                    .then(response=> {
                        console.log(response);
                        this.setState({
                            success: "Updated successfully",
                            error: null,
                        })
                        window.location.href="profile"
                    })
                    .catch(err=> {
                        console.log(err);
                        this.setState({
                            error: "Could not update profile, maybe the username/email you entered are used by another account",
                        })
                    })
                }
                else {
                    stationOwnerPutNoPass(this.state.userId, userPutObj)
                    .then(response=> {
                        console.log(response);
                        this.setState({
                            success: "Updated successfully",
                            error: null,
                        })
                        window.location.href="profile"
                    })
                    .catch(err=> {
                        console.log(err);
                        this.setState({
                            error: "Could not update profile, maybe the username/email you entered are used by another account",
                        })
                    })


                }
            }
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not update profile, maybe the username/email you entered are used by another account",
            })
        })
        e.preventDefault();
    }

    allowed = () => {
        console.log("checking if allowed");
        let reason1 = (this.state.username.length===0 ||
                    this.state.email.length===0);
        console.log(reason1);
        let reason2 = (this.state.password.length!==0 &&
                    this.state.confirmPassword.length===0) ||
                      (this.state.password.length===0 &&
                    this.state.confirmPassword.length!==0) ||
                      (this.state.password !== this.state.confirmPassword)
        console.log(reason2);
        if (reason1) {
            this.setState({
                error: "Insert compulsory info",
                success: null,
            })
            return false;
        }
        else {
            if (reason2) {
                this.setState({
                    error: "Passwords don't match",
                    success: null,
                })
                return false;
            }
            else {
                this.setState({
                    error: null,
                    success: null,
                })
                return true;
            }
        }
        return !(reason1&&reason2);
    }

    submitActivate = () => {
        console.log("checking submit...")
        let disabled = !this.allowed();
        this.setState({
            submitDisabled: disabled,
        })
        const button = document.getElementById('upd-submit-input-button')
        if (disabled) {
            button.style.backgroundColor="#999"
        }

        else {
            button.style.backgroundColor="rgb(109, 160, 205)"
        }
    }

    componentDidMount() {
        countriesGet()
        .then(response => {
            console.log(response);
            this.setState({
                countries: response.data
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Couldn't retrieve info from db",
                success: null,
            })
        })
        
        if (this.state.role==="VehicleOwner") {
            getUserOBJECT(this.state.userId)
            .then(response => {
                console.log(response);
                console.log(response.data.dateOfBirth);
                    
                    this.setState({
                        username: response.data.username,
                        email: response.data.emailAddr,
                        firstName: response.data.firstName,
                        lastName: response.data.lastName,
                        password: "hidden password",
                        confirmPassword: "hidden password",
                        dateOfBirth: response.data.dateOfBirth,
                        apiKey: response.data.apiKey,
                        addressId: response.data.userAddress ? response.data.userAddress.id : null,
                        country: response.data.userAddress ? (response.data.userAddress.country ? response.data.userAddress.country.id+",,"+response.data.userAddress.country.title+",,"+response.data.userAddress.country.isocode+",,"+response.data.userAddress.country.continentcode : "null,,null,,null,null") : "5,,Afghanistan,,AS,,AF",
                        postCode: response.data.userAddress ?                    (response.data.userAddress.postcode          ? response.data.userAddress.postcode          : "") : "",
                        town: response.data.userAddress ?                        (response.data.userAddress.town              ? response.data.userAddress.town              : "") : "",
                        stateOrProvince: response.data.userAddress ?             (response.data.userAddress.stateOrProvince   ? response.data.userAddress.stateOrProvince   : "") : "",
                        tel1: response.data.userAddress                   ?      (response.data.userAddress.contactTelephone1 ? response.data.userAddress.contactTelephone1 : "") : "",
                        tel2: response.data.userAddress ?                        (response.data.userAddress.contactTelephone2 ? response.data.userAddress.contactTelephone2 : "") : "",
                        addrLine: response.data.userAddress ?                    (response.data.userAddress.userAddressLine1  ? response.data.userAddress.userAddressLine1  : "") : "",

                    })
            })
            .catch(err => {
                console.log(err);
            })
        }
        else if (this.state.role==="StationOwner") {
            stationOwnerOBJECTGet(this.state.userId)
            .then(response => {
                console.log(response);
                console.log(response.data.dateOfBirth);
                console.log("got the address object:");
                console.log(response.data.address);
                this.setState({
                    username: response.data.username,
                    email: response.data.emailAddr,
                    firstName: response.data.firstName,
                    lastName: response.data.lastName,
                    password:        "hidden password",
                    confirmPassword: "hidden password",
                    dateOfBirth: response.data.dateOfBirth,
                    apiKey: response.data.apiKey,
                    addressId: response.data.address ? response.data.address.id : null,
                    country: response.data.address ? (response.data.address.country ? response.data.address.country.id+",,"+response.data.address.country.title+",,"+response.data.address.country.isocode+",,"+response.data.address.country.continentcode : "null,,null,,null,null") : "5,,Afghanistan,,AS,,AF",
                    postCode: response.data.address ?                    (response.data.address.postcode          ? response.data.address.postcode          : "") : "",
                    town: response.data.address ?                        (response.data.address.town              ? response.data.address.town              : "") : "",
                    stateOrProvince: response.data.address ?             (response.data.address.stateOrProvince   ? response.data.address.stateOrProvince   : "") : "",
                    tel1: response.data.address                   ?      (response.data.address.contactTelephone1 ? response.data.address.contactTelephone1 : "") : "",
                    tel2: response.data.address ?                        (response.data.address.contactTelephone2 ? response.data.address.contactTelephone2 : "") : "",
                    addrLine: response.data.address ?                    (response.data.address.userAddressLine1  ? response.data.address.userAddressLine1  : "") : "",

                })
            })
            .catch(err => {
                console.log(err);
            })
        }


    }

    render() {
        
        if (!this.state.userId) {
            return(
                <UnAuthorized 
                    message="You need to create an account to have your personal profile page"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }

        else {
        
            return(

                <div className="allpage">
                    
                    <MyNavbar />
                    
                    <div className="general-page-container more-blur center-content">

                                
                                    <div className="specific-title">
                                        <div className="station-info-title">Profile Update</div>
                                        <div className="error-message">{this.state.error}</div> 
                                        <div className="success-message">{this.state.success}</div> 
                                    </div>
                        
                                <div className="update-profile-container center-content">

                                    <div className="update-profile-icon-container margin-small">
                                        <img src={icon}/>
                                    </div>
                                    <div className="color2">Move your cursor over a field to for an explanation of its role</div>
                                    <form className="profile-pic-and-form-container flex-layout fix-width">
                                        <input id="reg-username-input" title="Username" className="register-input flex-item-small" name="username" value={this.state.username} type="text" placeholder="Username*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-password-input" title="Password" className="register-input flex-item-small" name="password" value={this.state.password} type="password" placeholder="Password*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-confirm-password-input" title="Confirm Password" className="register-input flex-item-small" name="confirmPassword" value={this.state.confirmPassword} type="password" placeholder="Confirm Password*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-email-input" title="Email"className="register-input flex-item-small" name="email" value={this.state.email} type="email" placeholder="Email*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-first-name-input" title="First Name" className="register-input flex-item-small" name="firstName" value={this.state.firstName} type="text" placeholder="First name..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-last-name-input" title="Last Name" className="register-input flex-item-small" name="lastName" value={this.state.lastName} type="text" placeholder="Last name..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-date-of-birth-input" title="Date Of Birth" className="register-input flex-item-small" name="dateOfBirth" value={this.state.dateOfBirth} type="date" placeholder="Date of Birth" onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <select id="reg-country-input" title="Country" className="register-input flex-item-small" name="country" value={this.state.country} type="text" placeholder="Country..." onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                            {this.state.countries.map((key, value) => {
                                                return(
                                                    <option key={value} value={key.id+",,"+key.title+",,"+key.isocode+",,"+key.continentcode}>{key.title}</option>
                                                )
                                            })}
                                        </select>                  
                                        <input id="reg-town-input" title="Town" className="register-input flex-item-small" name="town" value={this.state.town} type="text" placeholder="Town..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-state-input" title="State/Province" className="register-input flex-item-small" name="stateOrProvince" value={this.state.stateOrProvince} type="text" placeholder="State/Province..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-post-code-input" title="Postcode" className="register-input flex-item-small" name="postCode" value={this.state.postCode} type="text" placeholder="Postcode..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-tel1-input" title="Contact Tel1" className="register-input flex-item-small" name="tel1" value={this.state.tel1} type="tel" placeholder="Telephone number 1..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-tel2-input" title="Contact Tel2" className="register-input flex-item-small" name="tel2" value={this.state.tel2} type="tel" placeholder="Telephone number 2..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                        <input id="reg-addr-line-input" title="Address Line" className="register-input flex-item-small" name="addrLine" value={this.state.addrLine} type="text" placeholder="Address line..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>                               
                                    </form>
                                    <input id="upd-submit-input-button" title="Update Profile" className="my-button submit-button flex-item-small margin-top-small" name="submit" type="submit" value="Update Profile" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>



                                </div>

                    </div>

                </div>

            )
        }
    }

}

export default UpdateProfile;