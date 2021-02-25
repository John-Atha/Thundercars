import React from 'react';
import './Register.css';
import md5 from 'crypto-js/md5'
import logo from './images/thundera.png';
import {countriesGet, userAddressPost, userPost} from './api';

class Register extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            role:"VehicleOwner", // default
            //----
            username: "",
            password: "",
            confirmPassword: "",
            email: "",
            firstName: "",
            lastName: "",
            dateOfBirth: "",
            //----
            country: {
                id: 5,
                title: "Afghanistan",
                continentCode: "AS",
                isocode: "AF"
            },
            /*countryId: "",
            countryTitle: "",
            countryContinentCode: "",
            countryIsoCode: "",*/
            //----
            addrLine: "",
            town: "",
            stateOrProvince: "",
            postCode: "",
            tel1: "",
            tel2: "",
            //----
            sumbitDisabled: true,
            error: null//"Insert compulsory info"
        }
        this.countries = [];
        this.handleSubmit = this.handleSubmit.bind(this);    
        this.handleInput = this.handleInput.bind(this);    
        this.submitActivate = this.submitActivate.bind(this);    
        this.submitChangeColor = this.submitChangeColor.bind(this);    
        this.allowed = this.allowed.bind(this);    
    }


    componentDidMount() {
        countriesGet()
        .then(response => {
            //console.log(response.data);
            this.countries = response.data;
            this.updateCountriesSelect();
        })
        .catch(err => {
            console.log(err);
        })
    }

    updateCountriesSelect = () => {
        const select = document.getElementById("reg-country-input");
        this.countries.sort( function(a,b) {
            var x=a.title;
            var y=b.title;
            return ((x<y) ? -1 : 1)
        })
        this.countries.map(country => {
            var opt = document.createElement('option');
            opt.appendChild(document.createTextNode(country.title));
            opt.value = country.id+","+country.title+","+country.continentCode+","+ country.isocode;
            select.appendChild(opt);
        })
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
        console.log(name+":  "+value);
    }

    handleSubmit = (e) => {
        console.log("SUBMITTED");
        this.setState( {
            error: null
        });
        let CountryObj = null;
        if (typeof(this.state.country)=="string") {
            let parts = this.state.country.split(",");
            CountryObj = {
                id: parts[0],
                title: parts[1],
                continentCode: parts[2],
                isocode: parts[3]
            }
        }
        else {
            CountryObj=this.state.country;
        }
        //console.log(CountryObj);
        // post new user address on api
        let UserAddressObj = {
            country: CountryObj,
            contactTelephone1: this.state.tel1,
            contactTelephone2: this.state.tel2,
            userAddressLine1: this.state.addrLine,
            town: this.state.town,
            stateOrProvince: this.state.stateOrProvince,
            postcode: this.state.postCode
        }
        userAddressPost(UserAddressObj)
        .then(response => {
            //console.log(response);
            let hashDigest = md5(this.state.password).toString();
            console.log(hashDigest);
            let reqObj = {
                username: this.state.username,
                password: hashDigest,
                emailAddr: this.state.email,
                firstName: this.state.firstName,
                lastName: this.state.lastName,
                dateOfBirth: this.state.dateOfBirth, // !!! standard structure
                userAddress: response.data
            }
            let postAddr="";
            if (this.state.role==="StationOwner") {
                postAddr="stationownersmod";
            }
            else {
                postAddr="usersmod";
            }
            userPost(reqObj, postAddr)
            .then(response => {
                console.log(response);
                localStorage.setItem('userId', response.data.id);
                localStorage.setItem('role', this.state.role);
                window.location.href="/home";
            })
            .catch(err => {
                console.log(err);
                console.log("Error creating new user");
                this.setState({
                    error: "Username/email already exists"
                })
            })
        })
        .catch(err => {
            console.log(err);
            console.log("Error creating new address");
        })
        // to be continued...
        e.preventDefault();
    }

    submitChangeColor = () => {
        const submitButton = document.getElementById('reg-submit-input');
        if (this.state.sumbitDisabled) {
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
        }
        else {
            submitButton.style.backgroundColor="rgb(233, 21, 21)";
            submitButton.style.color="white";
        }
    }

    allowed = () => {
        //console.log(this.state.password);
        //console.log(this.state.confirmPassword);
        let reason1 = (this.state.role.length!==0 &&
            this.state.username.length!==0 &&
            this.state.password.length!==0 &&
            this.state.confirmPassword.length!==0 &&
            this.state.email.length!==0);
        let reason2 = this.state.password===this.state.confirmPassword;
        if (!reason1) {
           // console.log("case 1");
            this.setState({
                error: "Insert compulsory info"
            });
        }
        else {
            if (!reason2) {
                this.setState({
                    error: "Different passwords"
                });
            }
            else {
               this.setState({
                error: null
               });
            }
        }
        return (reason1 && reason2); 
    }

    submitActivate = () => {
        //console.log("title: " + this.state.country.title);
        //console.log("error:" + this.state.error);
        this.setState ({
            sumbitDisabled: !this.allowed()
        });
        console.log("submit disabled: " + this.state.sumbitDisabled);
        //console.log("role: --"+this.state.role);
        this.submitChangeColor();
    }

    render() {
        if (localStorage.getItem('userId')) {
            window.location.href="/home";
        }
        else {
            return(
                <div className="register-page-container blur">
                    <div className="image-container center-content">
                        <img className="logo" src={logo} alt="Thundercars-logo"/>
                    </div>
                    <div className="title-container center-content">
                        Thundercars
                    </div>

                    <div className="register-form-container center-content">
                        <div id="register-title">
                            Register
                            {this.state.error!==null && ( 
                                <div className="error-message">
                                    {this.state.error}
                                </div>
                            )}
                        </div>
                        <form id="register-form">
                            <select name="role" id="role" className="register-input" value={this.state.role} onChange={this.handleInput} >
                                <option value="VehicleOwner">Vehicle owner</option>
                                <option value="StationOwner">Station owner</option>
                            </select>
                            <div id="register-rest-inputs-container">
                                <input id="reg-username-input" className="register-input" name="username" value={this.state.username} type="text" placeholder="Username*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-password-input" className="register-input" name="password" value={this.state.password} type="password" placeholder="Password*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-confirm-password-input" className="register-input" name="confirmPassword" value={this.state.confirmPassword} type="password" placeholder="Confirm Password*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-email-input" className="register-input" name="email" value={this.state.email} type="email" placeholder="Email*..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-first-name-input" className="register-input" name="firstName" value={this.state.firstName} type="text" placeholder="First name..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-last-name-input" className="register-input" name="lastName" value={this.state.lastName} type="text" placeholder="Last name..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-date-of-birth-input" className="register-input" name="dateOfBirth" value={this.state.dateOfBirth} type="date" placeholder="Date of Birth" onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <select id="reg-country-input" className="register-input" name="country" value={this.state.country} type="text" placeholder="Country..." onChange={this.handleInput} onKeyUp ={this.submitActivate}>
                                </select>                  
                                <input id="reg-town-input" className="register-input" name="town" value={this.state.town} type="text" placeholder="Town..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-state-input" className="register-input" name="stateOrProvince" value={this.state.stateOrProvince} type="text" placeholder="State/Province..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-post-code-input" className="register-input" name="postCode" value={this.state.postCode} type="text" placeholder="Postcode..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-tel1-input" className="register-input" name="tel1" value={this.state.tel1} type="tel" placeholder="Telephone number 1..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-tel2-input" className="register-input" name="tel2" value={this.state.tel2} type="tel" placeholder="Telephone number 2..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                                <input id="reg-addr-line-input" className="register-input" name="addrLine" value={this.state.addrLine} type="text" placeholder="Address line..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            </div>
                            <input id="reg-submit-input" className="register-input" name="submit" type="submit" value="Submit" disabled={this.state.sumbitDisabled} onClick={this.handleSubmit}/>
                        </form>
                    </div>
                    
                    <div className="reg-login-container center-content">
                        Already have an account?<br></br>
                        <a className="reg-login-link" href="/">Login.</a>            
                    </div>   
                </div>
            )
        }
    }

}

export default Register