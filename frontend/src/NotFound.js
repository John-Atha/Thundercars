import React from 'react';
import './NotFound.css'
import logo from './images/thundera.png';


class NotFound extends React.Component {

    constructor(props) {
        super(props);
        this.goHome = this.goHome.bind(this);
    }

    goHome = () => {
        window.location.href="/";
    }

    render() {
        return (
            <div className="blur" id="not-found-page-container">
                <div id="not-found-logo-title-container" className="center-content">
                    <div id="not-found-image-container">
                        <img id="not-found-logo" src={logo} alt="Thundercars-logo"/>
                    </div>
                    <div className="not-found-title-container">
                        Thundercars
                    </div>
                </div>
                <div id="not-found-message-container" className="center-content">
                    Oops... Page not found
                </div>
                <div id="not-found-button-container" className="center-content">
                    <button id="not-found-go-home-button" onClick={this.goHome}>
                        Home page
                    </button>
                </div>
            </div>
        )
    }

}

export default NotFound;