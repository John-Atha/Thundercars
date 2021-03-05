import React from 'react';
import './Developers.css';
import MyNavbar from './MyNavbar';
import logo from './images/thundera.png';
import UnAuthorized from './UnAuthorized';
import {getUserOBJECT, stationOwnerOBJECTGet, userPutWithPass, stationOwnerPut} from './api';


class Developers extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            apiKey: null,
            error: null,
            success: null,
            userObj: null,
        }
        this.generate = this.generate.bind(this);
    }

    generate = () => {
        let newKey = "";
        let characters = "ABC1DEF2GHI3JK4L5M67NOP8QR9STUVWXYZ";
        for (let i=0; i<12; i++) {
            newKey = newKey + characters.charAt(Math.floor(Math.random() * 35))
        }
        let part1 = newKey.slice(0,4);
        let part2 = newKey.slice(4,8);
        let part3 = newKey.slice(8,12);
        newKey = part1 + "-" + part2 + "-" + part3;

        setTimeout(function(){}, 2000);
        let newUserObj = this.state.userObj;
        newUserObj.apiKey=newKey;
        console.log(newUserObj);
        if (this.state.role==="VehicleOwner") {
            console.log("updating user...")
            userPutWithPass(this.state.userId, newUserObj)
            .then(response => {
                console.log(response);
                this.setState({
                    apiKey: newKey,
                    success: "Generated",
                    error: null,
                });
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not generate API key, try again later",
                    success: null,
                })
            })
        }
        else if (this.state.role==="StationOwner") {
            console.log("updating station owner...")
            stationOwnerPut(this.state.userId, newUserObj)
            .then(response => {
                console.log(response);
                this.setState({
                    apiKey: newKey,
                    success: "Generated",
                    error: null,
                });
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not generate API key, try again later",
                    success: null,
                })
            })

        }

    }

    componentDidMount() {
        if (this.state.role==="VehicleOwner") {
            getUserOBJECT(this.state.userId)
            .then(response => {
                console.log(response);
                this.setState({
                    apiKey: response.data.apiKey,
                    userObj: response.data,
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "We could not find information about you, please try again later"
                })
            })
        }
        else if (this.state.role==="StationOwner") {
            stationOwnerOBJECTGet(this.state.userId)
            .then(response => {
                console.log(response);
                this.setState({
                    apiKey: response.data.apiKey,
                    userObj: response.data,
                }) 
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "We could not find information about you, please try again later"
                })
            })
        }

    }

    render() {
        if (!this.state.userId) {
            return(
                <UnAuthorized 
                message="You need to create an account to have access to our Command Line Interface and API by getting your personal api key"
                linkMessage="Create an account"
                link="/register" 
            />
            )
        }
        else {
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="specific-title">
                            API-CLI access
                        </div>
                        <div className="developers-page-main-container center-content">
                            <div className="white margin-top-small border-bottom padding-bottom-small">
                                If you want to use our Command Line Interface, or use our data straight out of our API, you will need your personal API key.<br></br><br></br>
                                Note that you can have only one API key for each account.<br></br>
                                So, if you already have an API key from this account, generating a new one will deactivate it.
                            </div>
                            
                            {   !this.state.success && this.state.apiKey &&
                                    <div className="current-api-key-container white margin-top-small">
                                        Looks like you already have the active API key: <b className="color2">{this.state.apiKey}</b><br></br>
                                        If for some reason you need to replace it, go ahead and generate a new one!
                                    </div>
                            }
                            {   !this.state.success && !this.state.apiKey &&
                                    <div className="current-api-key-container white margin-top-small">
                                        Looks like we couldn't find an active API key of yours...<br></br>
                                        If you think you need one, go ahead and generate it!
                                    </div>
                            }
                            {   this.state.success && !this.state.error &&
                                    <div className="white margin-top-small">
                                        <p className="success-message">Generated!!</p>
                                        New API key: <b className="color2">{this.state.apiKey}</b>
                                    </div>
                            }
                            {   this.state.error &&
                                    <div className="white margin-top-small">
                                        <p className="error-message">{this.state.error}</p>
                                    </div>
                            }

                            {   !this.state.success && this.state.userObj &&
                                    <div className="key-generator-container margin-top">
                                        <button className="api-key-button my-button" onClick={this.generate}>Generate key</button>
                                    </div>
                            }

                        </div>
                    </div>

                </div>
            )
        }

    }

}

export default Developers;
