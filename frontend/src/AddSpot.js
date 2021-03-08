import React from 'react';
import './AddStation.css';
import MyNavbar from './MyNavbar';
import {getStations, getOneStationOBJECT, spotPost, stationSpotPost, connTypesGet, currTypesGet, levelsGet} from './api';
import UnAuthorized from './UnAuthorized';

class AddSpot extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: "",
            submitDisabled: true,
            station: "",
            connType: "",
            currType: "",
            level: "",
            comments: "",
            stations: [{}],
            connTypes: [{}],
            currTypes: [{}],
            levels: [{}],
            amps: "",
            voltage: "",
            power: "",
            spotComments: "",
            quantity: "",
            quantityAvailable: "",
            quantityOperational: "",
        }
        
        this.handleInput = this.handleInput.bind(this);    
        this.handleSubmit = this.handleSubmit.bind(this);    
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

    componentDidMount() {
        getStations(this.state.userId)
        .then(response => {
            console.log(response);
            this.setState({
                stations: response.data.StationsList,
                station: response.data.StationsList.length>0 ? response.data.StationsList[0].Id+",,"+response.data.StationsList[0].Title : null,
                //stationId: response.data.StationsList.length>0 ? response.data.StationsList[1].Id : null,
                //stationTitle: response.data.StationsList.length>0 ? (response.data.StationsList[1].Title ? response.data.StationsList[1].Title : "Unknown title") : null,
            });
            console.log(this.state.stations);
            console.log(this.state.stationId);
        })
        .catch(err=> {
            console.log(err);
        })
        connTypesGet()
        .then(response =>{
            console.log(response);
            this.setState({
                connTypes: response.data,
                connType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].formalName+",,"+response.data[0].category
            })
        })
        .catch(err => {
            console.log(err);
        })
        currTypesGet()
        .then(response => {
            console.log(response);
            this.setState({
                currTypes: response.data,
                currType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].description
            })
        })
        .catch(err=> {
            console.log(err);
        })
        levelsGet()
        .then(response => {
            console.log(response);
            this.setState({
                levels: response.data,
                level: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].comments+",,"+response.data[0].isFastChargeCapable
            })
        })
        .catch(err => {
            console.log(err);
        })

    }

    handleSubmit = (e) => {
        console.log("SUBMITTED");
        let connType = null;
        let level = null;
        let currType = null;

        // buils conn type nested object
        let connTypeStr = this.state.connType;
        let connTypeParts = connTypeStr.split(",,");
        connType = {
            id:          connTypeParts[0]==="null" ? null : connTypeParts[0],
            title:       connTypeParts[1]==="null" ? null : connTypeParts[1],
            comments:    connTypeParts[2]==="null" ? null : connTypeParts[2],
            isFastChargeCapable: connTypeParts[3]==="true" ? true : false
        }
        let currTypeStr = this.state.currType;
        let currTypeParts = currTypeStr.split(",,");
        currType = {
            id:          currTypeParts[0]==="null" ? null : currTypeParts[0] ,
            title:       currTypeParts[1]==="null" ? null : currTypeParts[1] ,
            description: currTypeParts[2]==="null" ? null : currTypeParts[2] ,
        }
        let levelStr = this.state.level;
        let levelParts = levelStr.split(",,");
        level = {
            id:          levelParts[0]==="null" ? null : levelParts[0] ,
            title:       levelParts[1]==="null" ? null : levelParts[1] ,
            comments:    levelParts[2]==="null" ? null : levelParts[2] ,
            category:    levelParts[3]==="null" ? null : levelParts[3] ,
        }
        let spotObjPost = {
            connectionType: connType,
            level: level,
            currentType: currType,
            amps:        this.state.amps.length===0         ? null : parseFloat(this.state.amps)        ,
            voltage:     this.state.voltage.length===0      ? null : parseFloat(this.state.voltage)     ,
            powerkw:     this.state.power.length===0        ? null : parseFloat(this.state.power)       ,
            comments:    this.state.spotComments.length===0 ? null : this.state.spotComments
        }
        let stationStr = this.state.station;
        let stationParts = stationStr.split(",,");
        spotPost(spotObjPost)
        .then(response => {
            console.log("postara to spot:");
            console.log(response);
            let spotObjGet = response.data;
            console.log("retrieving info for station: "+stationParts[0])
            getOneStationOBJECT(stationParts[0])
            .then(response => {
                console.log(response);
                let stationObjGet = response.data;
                let stationSpotObject = {
                    chargingStation: stationObjGet,
                    chargingSpot: spotObjGet,
                    quantity:              this.state.quantity.length===0            ? null : parseInt(this.state.quantity)           ,
                    quantityAvailable:     this.state.quantityAvailable.length===0   ? null : parseInt(this.state.quantityAvailable)  ,
                    quantityOperational :  this.state.quantityOperational.length===0 ? null : parseInt(this.state.quantityOperational),
                }
                console.log(`posting station-spot object:`);
                console.log(stationSpotObject);
                stationSpotPost(stationSpotObject)
                .then(response => {
                    console.log(response);
                    this.setState({
                        error: "Submitted succesfully"
                    })
                    window.location.href=`spots/${response.data.id}`;
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not create, please try again"
                    })
                })

            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not create, please try again"
                })
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not create, please try again"
            })
        })
        e.preventDefault()
    }

    render() {
        if (!this.state.userId) {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to to add a new spot"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to add a new spot"
                    linkMessage="Log out and create an account as a station owner"
                    link="/register"

                />
            )
        }

        else {
            return (
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        
                        <div className="add-station-specific-title">
                                <div className="station-info-title">
                                    Add spot
                                    {this.state.error!==null && ( 
                                        <div className="error-message">
                                            {this.state.error}
                                        </div>
                                    )}    
                                </div> 
                        </div>

                        {this.state.stations.length>0 &&
                        
                            <form id="add-spot-info-container">
                                <div className="color2">Move your cursor over a field to for an explanation of its role</div>
                                <div className="add-spot-first-container flex-layout">                        
                                    <input className="add-station-input flex-item-medium" title="Amperes" id="add-spot-amps" placeholder="Amperes" type="number" step=".01" name="amps" value={this.state.amps} onChange={this.handleInput} />
                                    <input className="add-station-input flex-item-medium" title="Voltage" id="add-spot-voltage" placeholder="Voltage" name="voltage" type="number" step=".01" value={this.state.voltage} onChange={this.handleInput} />
                                    <input className="add-station-input flex-item-medium" title="Power" id="add-spot-power" placeholder="Power(kW)" name="power" type="number" step=".01" value={this.state.power} onChange={this.handleInput} />                       
                                    <input className="add-station-input flex-item-medium" title="Quantity" id="add-spot-quantity" placeholder="Quantity" name="quantity" type="number" step="1" min="0" value={this.state.quantity} onChange={this.handleInput} />                       
                                    <input className="add-station-input flex-item-medium" title="Quantity Available" id="add-spot-quantity-available" placeholder="Quantity of available" name="quantityAvailable" type="number" step="1" min="0" value={this.state.quantityAvailable} onChange={this.handleInput} />                       
                                    <input className="add-station-input flex-item-medium" title="Quantity Operational" id="add-spot-quantity-operational" placeholder="Quantity of operational" name="quantityOperational" type="number" step="1" min="0" value={this.state.quantityOperational} onChange={this.handleInput} />                       
                                </div>
                                
                                <textarea className="add-station-input-textarea" title="Comments" id="add-spot-comments" placeholder="Comments" name="comments" value={this.state.comments} onChange={this.handleInput} />                       

                                <div className="add-station-selects-container flex-layout">
                                    <select className="add-station-input flex-item-medium" title="Station's title" id="add-spot-station" name="station" value={this.state.station} onChange={this.handleInput} >
                                        {
                                            this.state.stations.map((key, value) =>{
                                                console.log(key.Id);
                                                return(
                                                        <option key={key.Id} value={key.Id+",,"+key.Title}>Station {key.Id} ({key.Title})</option>
                                                    )

                                            })
                                        }
                                    </select>
                                    <select className="add-station-input flex-item-medium" title="Connection Type" id="add-spot-connection-type" name="connType" value={this.state.connType} onChange={this.handleInput} >
                                        {
                                            this.state.connTypes.map((key, value) =>{
                                                //console.log(value);
                                                return(
                                                    <option key={key.id} value={key.id+",,"+key.title+",,"+key.formalName+",,"+key.category}>{key.title}</option>
                                                )
                                            })
                                        }
                                    </select>
                                    <select className="add-station-input flex-item-medium" title="Level" id="add-spot-level" name="level" value={this.state.level} onChange={this.handleInput} >
                                        {
                                            this.state.levels.map((key, value) =>{
                                                //console.log(value);
                                                    return(
                                                        <option key={key.id} value={key.id+",,"+key.title+",,"+key.comments+",,"+key.isFastChargeCapable}>{key.title}</option>
                                                    )
                                            })
                                        }
                                    </select>
                                    <select className="add-station-input flex-item-medium" title="Current Type" id="add-spot-current-type" name="currType" value={this.state.currType} onChange={this.handleInput} >
                                        {
                                            this.state.currTypes.map((key, value) =>{
                                                //console.log(value);
                                                    return(
                                                        <option key={key.id} value={key.id+",,"+key.title+",,"+key.description}>{key.title}</option>
                                                    )
                                            })
                                        }
                                    </select>

                                </div>
                                                                                                        
                            </form>
                        }

                        {this.state.stations.length>0 &&
                            <input id="add-station-submit" className="my-button add-active-button" title="Add spot" name="submit" type="submit" value="Add spot" onClick={this.handleSubmit}/>
                        }

                        {!this.state.stations.length && 
                            <div className="error-message margin-top-small center-content">No stations found,<br></br><br></br><a href="/addStation">add a station from here</a></div>
                        }


                    </div>
                </div>

            )
        }
    }


}

export default AddSpot;