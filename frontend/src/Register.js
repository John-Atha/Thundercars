import React from 'react';
import './Register.css';
import logo from './images/thundera.png';

class Register extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            role:"VehicleOwner", // default
            username: "",
            password: "",
            confirmPassword: "",
            email: "",
            firstName: "",
            lastName: "",
            dateOfBirth: "",
            country: "",
            town: "",
            stateOrProvince: "",
            postCode: "",
            tel1: "",
            tel2: "",
            sumbitDisabled: true,
            error: null
        }
        this.handleSubmit = this.handleSubmit.bind(this);    
        this.handleInput = this.handleInput.bind(this);    
        this.submitActivate = this.submitActivate.bind(this);    
        this.submitChangeColor = this.submitChangeColor.bind(this);    
        this.allowed = this.allowed.bind(this);    
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
        this.setState( {
            error: null
        });
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
        return (this.state.role.length!==0 &&
               this.state.username.length!==0 &&
               this.state.password.length!==0 &&
               this.state.confirmPassword.length!==0 &&
               this.state.email.length!==0); 
    }

    submitActivate = () => {
        this.state.sumbitDisabled=!this.allowed();
        console.log("submit disabled: " + this.state.sumbitDisabled);
        console.log("role: --"+this.state.role);
        this.submitChangeColor();
    }

    render() {
        return(
            <div className="register-page-container blur">
                <div className="image-container center-content">
                    <img className="logo" src={logo} />
                </div>
                <div className="title-container center-content">
                    Thundercars
                </div>

                <div className="register-form-container center-content">
                    <div id="register-title">
                        Register
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
                            <input id="reg-country-input" className="register-input" name="country" value={this.state.country} type="text" placeholder="Country..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-town-input" className="register-input" name="town" value={this.state.town} type="text" placeholder="Town..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-state-input" className="register-input" name="stateOrProvince" value={this.state.stateOrProvince} type="text" placeholder="State/Province..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-post-code-input" className="register-input" name="postCode" value={this.state.postCode} type="text" placeholder="Postcode..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-tel1-input" className="register-input" name="tel1" value={this.state.tel1} type="tel" placeholder="Telephone number 1..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-tel2-input" className="register-input" name="tel2" value={this.state.tel2} type="tel" placeholder="Telephone number 2..." onChange={this.handleInput} onKeyUp ={this.submitActivate}/>
                            <input id="reg-submit-input" className="register-input" name="submit" type="submit" value="Submit" disabled={this.state.sumbitDisabled} onClick={this.handleSumbit}/>
                        </div>
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

export default Register