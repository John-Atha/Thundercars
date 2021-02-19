import React from 'react';
import './Login.css';
import logo from './images/thundera.png'

class Login extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: "",
            sumbitDisabled: true,
            error: null
        }
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);    
        this.submitActivate = this.submitActivate.bind(this);    
        this.submitChangeColor = this.submitChangeColor.bind(this);    
  
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
    }

    handleSubmit = (e) => {
        this.setState( {
            error: null
        });
        // to be continued...
        e.preventDefault();
    }

    submitChangeColor = () => {
        const submitButton = document.getElementById('submit-input');
        if (this.state.sumbitDisabled) {
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
        }
        else {
            submitButton.style.backgroundColor="rgb(233, 21, 21)";
            submitButton.style.color="white";
        }
    }

    submitActivate = () => {
        if (this.state.username===null || this.state.password===null) {
            console.log("submit deactivated1");
            this.state.sumbitDisabled=true;
        }
        else {
            console.log(this.state.username.length);
            console.log(this.state.password.length);
            if (this.state.username.length===0 || this.state.password.length===0) {
                console.log("submit deactivated1");
                this.state.sumbitDisabled=true;
            }
            else {
                console.log("submit activated1");
                this.state.sumbitDisabled=false;
            }
        }
        this.submitChangeColor();
    }
 
    render() {
        return (
            <div className="login-page-container blur center-content">
                <div className="image-container">
                    <img className="logo" src={logo}/>
                </div>
                <div className="title-container">
                    Thundercars
                </div>
                <div className="login-form-container center-content">
                    <div id="login-title">
                        Login
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

export default Login