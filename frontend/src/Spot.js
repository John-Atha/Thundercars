import React from 'react';
import './Spot.css';
import MyNavbar from './MyNavbar';
import {getOneSpot, getOneSpotOBJECT} from './api'; 

class Spot extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            useId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            spotId: this.props.id,
            stationId: null,
            stationTitle: null,
            connType: null,
            level: null,
            levelComments: null,
            fastCharge: null,
            currentType: null,
            amps: null,
            voltage: null,
            power: null,
            comments: null   
        }
        this.attr1="Connection Type";
        this.attr2="Station Title";
        this.attr6="Station Id";
        this.attr3="Current Type";
        this.attr4="Level Comments";
        this.attr5="Fast Charge";
        this.attr5="Power (kW)";
        this.stationPageRedirect = this.stationPageRedirect.bind(this);    
        this.updateSpot = this.updateSpot.bind(this);    
    }

    stationPageRedirect = () => {
        let id=this.state.stationId;
        window.location.href=`/stations/${id}`;
    }

    componentDidMount() {
        getOneSpot(this.state.spotId)
        .then( response => {
            console.log(response);
            this.setState({
                stationId: response.data[this.attr6],
                stationTitle: response.data[this.attr2],
            });
            getOneSpotOBJECT(this.state.spotId)
            .then(response => {
                this.setState({
                    connType:          response.data[this.attr1]  ? response.data[this.attr1].title : "-",   
                    level:             response.data.level        ? response.data.level.title       : "-", 
                    levelComments:     response.data.level        ? response.data.level.comments    : "-",
                    fastCharge:        response.data.level        ? response.data.level.isFastChargeCapable : "-",   
                    currentType:       response.data.currentType  ? response.data.currentType.title : "-",   
                    amps:              response.data.amps         ? response.data.amps : "-",  
                    voltage:           response.data.voltage      ? response.data.voltage : "-",  
                    power:             response.data.powerkw      ? response.data.powerkw : "-",    
                    comments:          response.data.comments     ? (response.data.Comments.length!==0    ? response.data.Comments    : "-") : "-",     
                })
            })
            .catch(err=> {
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
            window.location.href="/error";
        })
    }

    updateSpot = () => {
        window.location.href=`/spots/${this.state.spotId}/update`;
    }


    render() {
        return(
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">
                    
                    <div className="specific-title">
                        <div onClick={this.stationPageRedirect} className="station-info-title">Spot {this.state.spotId}</div> 
                    </div>
                    
                    <div className="station-page-info-container box-colors margin-top-small">
                        
                        <div className="station-info-title darker">Station:</div> 
                        <a onClick={this.stationPageRedirect} className="station-info darker station-link">{this.state.stationTitle}</a>
                        
                        <div className="station-info-title">Connection Type:</div> 
                        <div className="station-info">{this.state.connType}</div>
                        
                        <div className="station-info-title darker">Level:</div>
                        <div className="station-info darker">{this.state.level}</div>
                    
                        <div className="station-info-title">Level comments: </div>
                        <div className="station-info">{this.state.levelComments}</div>
                        
                        <div className="station-info-title darker">Current type: </div> 
                        <div className="station-info darker">{this.state.currentType}</div>

                        <div className="station-info-title">Fast charge: </div>
                        <div className="station-info">{this.state.fastCharge===true ? "Yes" : "No"}</div>
                    
                        <div className="station-info-title darker">Amps: </div>
                        <div className="station-info darker">{this.state.amps} </div>
                        
                        <div className="station-info-title">Voltage: </div>
                        <div className="station-info">{this.state.voltage}</div>
                        
                        <div className="station-info-title darker">Power (kW): </div>
                        <div className="station-info darker">{this.state.power}</div>
                        
                        <div className="station-info-title">Comments:</div>
                        <div className="station-info">{this.state.comments}</div>                    
                    </div>
                
                    <div className="station-update-button-container center-content">
                            <button className="station-update-button" className="spot-choose-button" onClick={this.updateSpot}>
                                Update spot
                            </button>
                    </div>
                </div>
            </div>
        )
    }

}

export default Spot;
    