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
        console.log("my start: "+this.props.start);
        return (
            <div className="one-spot-sessions-container to-be-deleted">
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
            procList: [],
            error: null,
            startDate: this.props.startDate,
            endDate: this.props.endDate,
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
        getSpotSessions(this.state.spotId, this.props.startDate, this.props.endDate)
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
            this.setState({
                error: "Could not find sessions for this spot"
            })
        })
    }

    componentDidUpdate(prevProps) {
        if (prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            console.log(`from ${prevProps.startDate} to ${this.props.startDate}`);
            console.log(`from ${prevProps.endDate} to ${this.props.endDate}`);
            // remove previous objects from dom
            this.setState({
                procList: []
            });
            getSpotSessions(this.state.spotId, this.props.startDate, this.props.endDate)
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
                this.setState({
                    error: "Could not find sessions for this spot"
                })
            })
        }
    }

    render() {
        console.log("i will show the spot's sessions");
        return (
            <div className="spot-sessions-block center-content">
                <h5 className="orangeColor center-content">Spot {this.state.spotId} Sessions</h5>
                { this.state.error===null &&
                    <div className="spot-info-container center-content">
                        <div className="station-info-title">Spot's operator: </div>
                        <div className="station-info">{this.state.operator}</div>
                        <div className="station-info-title">Processes: </div>
                        <div className="station-info">{this.state.procNumber}</div>
                    </div>
                }
                { this.state.error===null &&
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
                }
                {
                    this.state.error!==null &&
                    <p className="red-color">{this.state.error}</p>
                }
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
            error: "Choose a spot to see its sessions",
            startDate: "2021-01-27",
            endDate: "",
        }
        this.selectSpot = this.selectSpot.bind(this);  
        this.handleInput = this.handleInput.bind(this);  
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

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
        console.log(name+":  ");
        console.log(value);
    }


    selectSpot = (event) => {
        this.setState({
            showingSpotId: event.target.innerText.replace("Spot ", ""),
            error: null,
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
                        <div className="spots-sessions-page-container more-blur center-content padding-bottom5">
                            
                            <div className="specific-title orangeColor">
                                Detailed Sesions Per Charging Point
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}  
                            </div>

                            <div className="spots-buttons-container center-content">
                                {   
                                    this.state.spotsList.map((value, index) => {
                                        console.log(index);
                                        return (<button className="spot-choose-button" key={value} onClick={this.selectSpot}>Spot {value}</button>)
                                    })
                                }
                            </div>

                            <div className="time-filters-container center-content">
                                <label className="start-date-label" htmlFor="startDate">From</label>
                                <label className="end-date-label"   htmlFor="endDate">To</label>
                                <input className="start-date-input" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                <input className="start-date-input" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                            </div>




                            
                            {   this.state.showingSpotId && 
                                    <div className="spots-container margin-top">
                                        <OneSpotSessionsDiv
                                            id={this.state.showingSpotId}
                                            key={this.state.showingSpotId}
                                            startDate={this.state.startDate}
                                            endDate={this.state.endDate}
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