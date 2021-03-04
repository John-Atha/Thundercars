import React from 'react';
import './UnAuthorized.css';
import MyNavBar from './MyNavbar';
import logo from './images/thundera.png';

class UnAuthorized extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            message: this.props.message,
            link: this.props.link,
            linkMessage: this.props.linkMessage,
            link2: this.props.link2,
            link2Message: this.props.link2Message
        }
        this.action = this.action.bind(this);
        this.logout = this.logout.bind(this);
    }

    logout = () => {
        localStorage.removeItem('userId');
        localStorage.removeItem('role');
    }

    action = (e) => {
        let message=e.target.innerText;
        if (message==="Log out and create an account as a vehicle owner" || message==="Log out and create an account as a station owner") {
            this.logout();
            window.location.href="/register";
            e.preventDefault();
        }
    }

    render() {

        return (
            <div className="allpage">
                <MyNavBar />
                <div className="unauthorized-message-container more-blur center-content color2 fix-width">
                    <div className="image-container">
                        <img className="logo" src={logo} alt="Thundercars-logo"/>
                    </div>
                    <div className="unauthorized-message">
                        {this.state.message}<br></br><br></br>
                        <a href={this.state.link} onClick={this.action}>{this.state.linkMessage}</a>
                    </div>
                    { 
                        this.state.link2 &&
                        <div className="unauthorized-message margin-top-small">
                            <a href={this.state.link2} onClick={this.action}>{this.state.link2Message}</a>
                        </div>


                    }
                </div>
            </div>
        )
    }

}

export default UnAuthorized;