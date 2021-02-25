import React from 'react';
import './AcCharger.css';
import MyNavBar from'./MyNavbar';
import {getOneAcCharger} from './api';
import CanvasJSReact from'./canvasjs.react';
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

class AcCharger extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            acId: this.props.id,
            types: null,
            usablePhases: null,
            maxPower: null,
            point110:null,
            point160:null,
            point20:null,
            point220:null,
            point23:null,
            point37:null,
            point430:null,
            point74:null,
            diagramOptions:null
        }
    }

    componentDidMount() {
        getOneAcCharger(this.state.acId)
        .then(response => {
            console.log(response);
            let PointsList = [];
            PointsList.push({label: "Point 2.0",y:(response.data["Power Per Charging Point"]["2.0"]) });
            PointsList.push({label: "Point 2.3",y:(response.data["Power Per Charging Point"]["2.3"]) });
            PointsList.push({label: "Point 3.7",y:(response.data["Power Per Charging Point"]["3.7"]) });
            PointsList.push({label: "Point 7.4",y:(response.data["Power Per Charging Point"]["7.4"]) });
            PointsList.push({label: "Point 11.0",y:(response.data["Power Per Charging Point"]["11.0"]) });
            PointsList.push({label: "Point 16.0",y:(response.data["Power Per Charging Point"]["16.0"]) });
            PointsList.push({label: "Point 22.0",y:(response.data["Power Per Charging Point"]["22.0"]) });
            PointsList.push({label: "Point 43.0",y:(response.data["Power Per Charging Point"]["43.0"]) });
            this.setState({
                usablePhases: response.data["Usable Phases"] ? (response.data["Usable Phases"].length !== 0 ? response.data["Usable Phases"] : "-") : "-",
                maxPower: response.data["Max Power"] ? (response.data["Max Power"].length !== 0 ? response.data["Max Power"] : "-") : "-",
                types: response.data.Ports[0]["Port Name"] ? (response.data.Ports[0]["Port Name"].length !== 0 ? response.data.Ports[0]["Port Name"] : "-") : "-",
                point20: response.data["Power Per Charging Point"]["2.0"] ? (response.data["Power Per Charging Point"]["2.0"].length !== 0 ? response.data["Power Per Charging Point"]["2.0"] : "-") : "-",
                point23: response.data["Power Per Charging Point"]["2.3"] ? (response.data["Power Per Charging Point"]["2.3"].length !== 0 ? response.data["Power Per Charging Point"]["2.3"] : "-") : "-",
                point37: response.data["Power Per Charging Point"]["3.7"] ? (response.data["Power Per Charging Point"]["3.7"].length !== 0 ? response.data["Power Per Charging Point"]["3.7"] : "-") : "-",
                point74: response.data["Power Per Charging Point"]["7.4"] ? (response.data["Power Per Charging Point"]["7.4"].length !== 0 ? response.data["Power Per Charging Point"]["7.4"] : "-") : "-",
                point110: response.data["Power Per Charging Point"]["11.0"] ? (response.data["Power Per Charging Point"]["11.0"].length !== 0 ? response.data["Power Per Charging Point"]["11.0"] : "-") : "-",
                point160: response.data["Power Per Charging Point"]["16.0"] ? (response.data["Power Per Charging Point"]["16.0"].length !== 0 ? response.data["Power Per Charging Point"]["16.0"] : "-") : "-",
                point220: response.data["Power Per Charging Point"]["22.0"] ? (response.data["Power Per Charging Point"]["22.0"].length !== 0 ? response.data["Power Per Charging Point"]["22.0"] : "-") : "-",
                point430: response.data["Power Per Charging Point"]["43.0"] ? (response.data["Power Per Charging Point"]["43.0"].length !== 0 ? response.data["Power Per Charging Point"]["43.0"] : "-") : "-",
                diagramOptions: {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Power per Charging Point",
                        fontSize: 20
                    },
                    axisY: {
                        labelFontSize : 15,
                        title: "kW"
                    },
                    axisX: {
                        labelFontSize : 15
                    },
                    data: [{
                        type: "column",
                        dataPoints:PointsList
                    }]
                }
            });
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        if((!localStorage.getItem('userId'))) {
            console.log("User not logged in error");
            setTimeout(() =>{window.location.href = "/"},10000);
            return (
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" className="error-message">
                        It seems that you are not logged in...
                        You will be redirected to the login page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else if(localStorage.getItem('role')=="StationOwner") {
            console.log("Station Owner Error");
            setTimeout(() =>{window.location.href = "/home"},10000);
            return(
                <div className="allPage">
                    <MyNavBar />
                    <div className="vehicle-page-container more-blur center-content">
                        <div className= "center-content" className="error-message">
                        It seems that you are logged in as a Station Owner...<br></br>
                        Log in to your Vehicle Owner account to view your Vehicles' AC Chargers.<br></br>
                        You will be redirected to the Home page in 10 seconds.
                        </div>
                    </div>
                </div>
            )
        }
        else {
            return (
                <div className="allPage">
                    <MyNavBar />
                <div className="general-page-container more-blur center-content">
                    <div className="specific-title orangeColor">
                        My AC Charger
                    </div>   
                    <div className="one-station-container center-content">
                        <div className="station-page-info-container">
                            <div className="station-info-title darker">Types: </div><div className="station-info darker">{this.state.types}</div>
                            <div className="station-info-title">Usable Phases: </div><div className="station-info">{this.state.usablePhases}</div>
                            <div className="station-info-title darker">Maximum Power: </div><div className="station-info darker">{this.state.maxPower} kW</div>
                        </div>   
                        <div><CanvasJSChart options = {this.state.diagramOptions} /></div>         
                    </div>

                </div>
                </div>
            );
        }
    }
}

export default AcCharger;