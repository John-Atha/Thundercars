import React from 'react';
import './Spot.css';
import MyNavbar from './MyNavbar';
import {getOneSpot, getOneSpotOBJECT, stationSpotGet, StationSpotDelete, getStations} from './api'; 

class Spot extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            spotId: this.props.id,
            stationsList: [],
            realSpotId: null,
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
            comments: null,
            showModal: false, 
            ownership: false,  
        }
        this.attr1="Connection Type";
        this.attr2="Station Title";
        this.attr6="Station Id";
        this.attr3="Current Type";
        this.attr4="Level Comments";
        this.attr5="Fast Charge";
        this.attr5="Power (kW)";
        this.stationPageRedirect = this.stationPageRedirect.bind(this);    
        this.deleteSpot = this.deleteSpot.bind(this);
        this.preDelete = this.preDelete.bind(this);
        this.hideModal = this.hideModal.bind(this);    
    }

    hideModal = () => {
        this.setState({
            showModal: false,
        })
    }

    preDelete = () => {
        this.setState({
            showModal: true,
        })
    }

    stationPageRedirect = () => {
        let id=this.state.stationId;
        window.location.href=`/stations/${id}`;
    }

    componentDidMount() {
        console.log("SPOT ID: "+this.state.spotId);
        getStations(this.state.userId)
        .then( response => {
            console.log(response);
            this.setState({
                stationsList: response.data.StationsList
            });
            let tempSpotsList = [];
            this.state.stationsList.forEach(element => {
                element.Spots.forEach(spot => {
                    tempSpotsList.push(spot.Spot);
                })
            });
            console.log("I own the spots: ");
            console.log(tempSpotsList);
            tempSpotsList.forEach(el => {
                if (parseInt(el)===parseInt(this.state.spotId)) {
                    this.setState({
                        ownership: true,
                    })
                }
            })
            console.log("Spots: ");
            console.log(this.state.spotsList);
        })
        .catch(err => {
            console.log(err);
        }) 
        getOneSpot(this.state.spotId)
        .then( response => {
            console.log(response);
            this.setState({
                stationId: response.data[this.attr6],
                stationTitle: response.data[this.attr2],
            });
            stationSpotGet(this.state.spotId)
            .then(response => {
                console.log(response);
                this.setState({
                    realSpotId: response.data.chargingSpot.id
                })
                getOneSpotOBJECT(this.state.realSpotId)
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
                        comments:          response.data.comments     ? (response.data.comments.length!==0    ? response.data.comments    : "-") : "-",     
                    })
                })
                .catch(err=> {
                    console.log(err);
                })
            })
            .catch(err=> {
                console.log(err);
                this.setState({
                    error: "No data found for this spot"
                })
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "No data found for this spot"
            })
        })
    }

    deleteSpot = () => {
        StationSpotDelete(this.state.spotId)
        .then(response => {
            console.log(response);
            this.setState({
                error: "Spot deleted successfully"
            });
            window.location.href=`/myspots`;
        })
        .catch(err => {
            this.setState({
                error: "Could not delete spot",
            })
        })
    }

    render() {
        return(
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content padding-bottom">
                    
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
                
                    {   this.state.ownership===true &&
                    
                            <div className="station-update-button-container center-content">
                                    <button className="delete-button my-button margin-top-small" onClick={this.preDelete}>
                                    Delete spot
                                    </button>
                            </div>
                    
                    }

                    {
                            this.state.showModal===true && 
                                <div className="modal-box box-colors">
                                    <div className="message">
                                        Are you sure you want delete this spot?<br></br>
                                        All of its statistics will be lost...
                                    </div>
                                    <div className="modal-buttons-container flex-layout margin-top-small">
                                        <button className="update-button my-button flex-item-expand margin-top-small" onClick={this.hideModal}>No, I changed my mind</button>
                                        <button className="delete-button my-button flex-item-expand" onClick={this.deleteSpot}>Yes, delete anyway</button>                                        
                                    </div>
                                </div>
                        
                    }

                </div>
            </div>
        )
    }

}

export default Spot;
    