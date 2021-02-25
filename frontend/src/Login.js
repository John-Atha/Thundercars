import React from 'react';
import './Login.css';
import logo from './images/thundera.png';
import {loginPost} from './api';


class Login extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: "",
            sumbitDisabled: true,
            error: null,
            userId: null
        }
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);    
        this.submitActivate = this.submitActivate.bind(this);    
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
    }

    handleSubmit = (e) => {
        console.log(this.state.sumbitDisabled);
        console.log("submitted");
        this.setState( {
            error: null
        });
        let reqObj = this.state.username+":"+this.state.password;
        loginPost(reqObj)
        .then(response => {
            console.log("response => userId: " + response.data.Id);
            localStorage.setItem('userId', response.data.Id);
            localStorage.setItem('role', response.data.Token);
            window.location.href = "/home";
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Wrong username/password"
            })
        })
        // to be continued...
        e.preventDefault();
    }

    submitActivate = () => {
        const submitButton = document.getElementById('submit-input');
        if (this.state.username===null || this.state.password===null) {
            console.log("submit deactivated");
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
            this.setState ({
                sumbitDisabled: true
            });
        }
        else {
            //console.log(this.state.username.length);
            //console.log(this.state.password.length);
            if (this.state.username.length===0 || this.state.password.length===0) {
                console.log("submit deactivated");
                submitButton.style.backgroundColor="#9999";
                submitButton.style.color="white";    
                this.setState ({
                    sumbitDisabled: true
                });
            }
            
            else {
                console.log("submit activated");
                submitButton.style.backgroundColor="rgb(233, 21, 21)";
                submitButton.style.color="white";    
                this.setState ({
                    sumbitDisabled: false
                });   
            }
        }
    }
 
    render() {
        if (localStorage.getItem('userId')) {
            this.setState({
               userId:  localStorage.getItem('userId')
            })
            window.location.href="/home";
        }
        else {
            return (
                <div className="login-page-container blur center-content">
                    <div className="image-container">
                        <img className="logo" src={logo} alt="Thundercars-logo"/>
                    </div>
                    <div className="title-container">
                        Thundercars
                    </div>
                    <div className="login-form-container center-content">
                        <div id="login-title">
                            Login
                            {this.state.error!==null && (
                                <div className="error-message">
                                {this.state.error}
                                </div>
                            )}
                        </div>
                        <form id="login-form">
                            <input id="username-input" className="login-input" name="username" value={this.state.username} type="text" placeholder="Username..." onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input id="password-input" className="login-input" name="password" value={this.state.password} type="password" placeholder="Password..." onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input id="submit-input" className="login-input" name="submit" type="submit" value="Submit" disabled={this.state.sumbitDisabled} onClick={this.handleSubmit}/>
                        </form>
                    </div>
                    <div className="register-container">
                        First time here?<br></br>
                        <a className="register-link" href="/register">Create an account.</a>            
                    </div>  
                </div>
            )
        }
    }

}

export default Login