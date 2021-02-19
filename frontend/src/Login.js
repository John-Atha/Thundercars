import React from 'react';
import './Login.css';
import logo from './images/thundera.png'

class Login extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            username: null,
            password: null,
            error: null
        }    
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
                        <input id="username-input" className="login-input"name="username" type="text" placeholder="Username..."/>
                        <input id="password-input" className="login-input" name="password" type="text" placeholder="Password..."/>
                        <input id="submit-input" className="login-input" name="submit" type="submit" value="Submit"/>
                    </form>
                </div>
                <div className="register-container">
                    First time here?<br></br>
                    <a className="register-link" href="#">Create an account.</a>            
                </div>  
            </div>

        )
    }

}

export default Login