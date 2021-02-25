import React from 'react';
import './MySpotsDetailedSessions.css';
import {getStations, getSpotSessions} from './api';
import MyNavbar from './MyNavbar';

//import CanvasJSReact from './canvasjs.react';
//var CanvasJSChart = CanvasJSReact.CanvasJSChart;


class OneSession extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            start: this.props.start,
            charged: this.props.charged,
            end: this.props.end,
            protocol: this.props.protocol,
            kWhDel: this.props.kWhDel,
            payment: this.props.payment,
            vehType: this.props.vehType
        }
    }

    render() {
        return (
            <div className="one-spot-sessions-container">
                <div className="station-info-title darker">Connected on: </div>
                <div className="station-info darker">{this.state.start}</div>
                <div className="station-info-title">Charged on </div>
                <div className="station-info ">{this.state.charged}</div>
                <div className="station-info-title darker">Disconnected on: </div>
                <div className="station-info darker ">{this.state.end}</div>
                <div className="station-info-title">Protocol </div>
                <div className="station-info">{this.state.protocol}</div>
                <div className="station-info-title darker">kWh delivered: </div>
                <div className="station-info darker">{this.state.kWhDel}</div>
                <div className="station-info-title">Payment way </div>
                <div className="station-info">{this.state.payment}</div>
                <div className="station-info-title darker">Vehicle type: </div>
                <div className="station-info darker">{this.state.vehType}</div>
            </div>
        )
    }

}

class OneSpotSessionsDiv extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            stationId: null,
            spotId: this.props.id,
            operator: null,
            procNumber: null,
            procList: []
        }
        this.attr1 = "Started On";
        this.attr2 = "Charged On";
        this.attr3 = "Finished On";
        this.attr4 = "kWh Delivered";
        this.attr5 = "Payment Way";
        this.attr6 = "Vehicle Type";
        this.attr7 = "Charging Sessions List";
        this.attr8 = "Station Id";
        this.attr9 = "Processes Number";
    }

    componentDidMount() {
        getSpotSessions(this.state.spotId)
        .then(response => {
            console.log(response);
            this.setState({
                stationId: response.data[this.attr8],
                operator: response.data.Operator,
                procNumber: response.data[this.attr9],
                procList: response.data[this.attr7]
            });
            console.log("ProcList:")
            console.log(this.state.procList);
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        console.log("i will show the spot's sessions");
        return (
            <div className="spot-sessions-block center-content">
                <h5 className="orangeColor center-content">Spot {this.state.spotId} Sessions</h5>
                <div className="spot-info-container center-content">
                    <div className="station-info-title">Spot's operator: </div>
                    <div className="station-info">{this.state.operator}</div>
                    <div className="station-info-title">Processes: </div>
                    <div className="station-info">{this.state.procNumber}</div>
                </div>
                <div className="all-spots-sessions-container center-content">
                    {
                        this.state.procList.map((value, index) => {
                            return(
                                <OneSession 
                                    key={index}
                                    index={index+1}
                                    start={value[this.attr1]}
                                    charged={value[this.attr2]}
                                    end={value[this.attr3]}
                                    protocol={value.Protocol}
                                    kWhDel={value[this.attr4]}
                                    payment={value[this.attr5]}
                                    vehType={value[this.attr6]}
                                />
                            )
                        })
                    }
                </div>
            </div>
        )
    }
}

class MySpotsDetailedSessions extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            stationsList: [],
            spotsList: [],
            showingSpotId: null,
        }
        this.selectSpot = this.selectSpot.bind(this);    
    }

    componentDidMount() {
        getStations(this.state.userId)
        .then( response => {
            console.log(response);
            let tempSpotsList = [];
            response.data.StationsList.forEach(element => {
                element.Spots.forEach(spot => {
                    tempSpotsList.push(spot.Spot);     // spot's id
                })
            });
            this.setState({
                stationsList: response.data.StationsList,
                spotsList: tempSpotsList
            });
            console.log("Spots: ");
            console.log(this.state.spotsList);
        })
    }

    selectSpot = (event) => {
        this.setState({
            showingSpotId: event.target.innerText.replace("Spot ", "")
        })
        console.log("pressed" + this.state.showingSpotId)
    }

    render() {
        if ((!this.state.userId) || this.state.role!=="StationOwner") {
            window.location.href="/";
        }
        else {        
            return (
                <div className="spot-sessions-all-page">
                        <MyNavbar />
                        <div className="spots-sessions-page-container more-blur center-content">
                            <div className="specific-title orangeColor">
                                Detailed Sesions Per Charging Point
                            </div>
                            <div className="spots-buttons-container center-content">
                                {   
                                    this.state.spotsList.map((value, index) => {
                                        console.log(index);
                                        return (<button className="spot-choose-button" key={value} onClick={this.selectSpot}>Spot {value}</button>)
                                    })
                                }
                            </div>
                            
                            {   this.state.showingSpotId && 
                                    <div className="spots-container">
                                        <OneSpotSessionsDiv
                                            id={this.state.showingSpotId}
                                            key={this.state.showingSpotId}
                                        /> 
                                    </div>
                                
                            }   
                        </div>
                    </div>
            )
        }
    }
}

export default MySpotsDetailedSessions;