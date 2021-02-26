import React from 'react';
import './Spot.css';
import MyNavbar from './MyNavbar';
import {getOneSpot} from './api'; 

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
                connType:          response.data[this.attr1]  ? (response.data[this.attr1].length!==0 ? response.data[this.attr1] : "-") : "-",   
                level:             response.data.Level        ? (response.data.Level.length!==0       ? response.data.Level       : "-") : "-", 
                levelComments:     response.data[this.attr4]  ? (response.data[this.attr4].length!==0 ? response.data[this.attr4] : "-") : "-",
                fastCharge:        response.data[this.attr5]  ? (response.data[this.attr5].length!==0 ? response.data[this.attr5] : "-") : "-",   
                currentType:       response.data[this.attr3]  ? (response.data[this.attr3].length!==0 ? response.data[this.attr3] : "-") : "-",   
                amps:              response.data.Amps         ? (response.data.Amps.length!==0        ? response.data.Amps        : "-") : "-",  
                voltage:           response.data.Voltage      ? (response.data.Voltage.length!==0     ? response.data.Voltage     : "-") : "-",  
                power:             response.data[this.attr5]  ? (response.data[this.attr5].length!==0 ? response.data[this.attr5] : "-") : "-",    
                comments:          response.data.Comments     ? (response.data.Comments.length!==0    ? response.data.Comments    : "-") : "-",  
            })
        })
        .catch(err => {
            console.log(err);
            window.location.href="/error";
        })
    }

    render() {
        return(
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">
                    <div className="specific-title">
                        <div onClick={this.stationPageRedirect} className="station-info-title">Spot {this.state.spotId}</div> 
                    </div>
                    <div className="station-page-info-container">
                        
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
                        <div className="station-info">{this.state.fastCharge}</div>
                    
                        <div className="station-info-title darker">Amps: </div>
                        <div className="station-info darker">{this.state.amps} </div>
                        
                        <div className="station-info-title">Voltage: </div>
                        <div className="station-info">{this.state.voltage}</div>
                        
                        <div className="station-info-title darker">Power (kW): </div>
                        <div className="station-info darker">{this.state.power}</div>
                        
                        <div className="station-info-title">Comments:</div>
                        <div className="station-info">{this.state.comments}</div>                    
                    </div>
                </div>
            </div>
        )
    }

}

export default Spot;
    