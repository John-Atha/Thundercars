import React from 'react';
import './UnAuthorized.css';
import MyNavBar from './MyNavbar';
import logo from './images/thundera.png';

class UnAuthorized extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            message: this.props.message,
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
                        <a href="/register">Create an account</a>
                    </div>
                </div>
            </div>
        )
    }

}

export default UnAuthorized;