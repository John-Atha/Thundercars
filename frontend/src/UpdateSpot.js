import React from 'react';
import './UpdateSpot.css';
import MyNavbar from './MyNavbar';
import {getStations, getOneSpotOBJECT, spotPut, connTypesGet, currTypesGet, levelsGet} from './api';

class UpdateSpot extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            spotId: this.props.id,
            error: null,
            ownership: false,
            stationId: "",
            stationTitle: "",
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
        }
        this.initObject= null;
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
            let allowedSpots = [];
            for (var i=0; i<response.data.StationsList.length; i++) {
                let currSpots = response.data.StationsList[i].Spots;
                currSpots.forEach(spotObj => {
                    allowedSpots.push(spotObj.Spot)
                });
            }
            for (i=0; i<allowedSpots.length; i++) {
                if (parseInt(allowedSpots[i])===parseInt(this.state.spotId)) {
                    this.setState({
                        ownership: true,
                    })
                    break;
                }
            }
            console.log("owner: "+ this.state.ownership);
            if (this.state.ownership===true) {
                this.setState({
                    stations: response.data.StationsList,
                });
                getOneSpotOBJECT(this.state.spotId)
                .then(response => {
                    this.initObject=response.data;
                    this.setState({
                        amps:     response.data.amps     ? (response.data.amps.length===0 ? "" : response.data.amps    ) : "",
                        voltage:  response.data.voltage  ? (response.data.voltage.length===0 ? "" : response.data.voltage ) : "",
                        power:  response.data.powerkw  ? (response.data.powerkw.length===0 ? "" : response.data.powerkw ) : "",
                        comments: response.data.comments ? (response.data.comments.length===0 ? "" : response.data.comments) : "",
                    })
                    connTypesGet()
                    .then(response =>{
                        console.log(response);
                        this.setState({
                            connTypes: response.data,
                            connType: this.initObject.connectionType ? 
                                this.initObject.connectionType.id+",,"+
                                this.initObject.connectionType.title+",,"+
                                this.initObject.connectionType.formalName+",,"+
                                this.initObject.connectionType.category :
                                "null,,null,,null,,null"
                        })
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not connect to database, please try again."
                        })        
                    })
                    currTypesGet()
                    .then(response => {
                        console.log(response);
                        this.setState({
                            currTypes: response.data,
                            currType: this.initObject.currentType ? 
                                this.initObject.currentType.id+",,"+
                                this.initObject.currentType.title+",,"+
                                this.initObject.currentType.description :
                                "null,,null,,null"
                        })
                    })
                    .catch(err=> {
                        console.log(err);
                        this.setState({
                            error: "Could not connect to database, please try again."
                        })        
                    })
                    levelsGet()
                    .then(response => {
                        console.log(response);
                        this.setState({
                            levels: response.data,
                            level: this.initObject.level ? 
                                this.initObject.level.id+",,"+
                                this.initObject.level.title+",,"+
                                this.initObject.level.comments+",,"+
                                this.initObject.level.isFastChargeCapable :
                                "null,,null,,null,,null"
                        })
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not connect to database, please try again."
                        })
                                
                    })
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not connect to database, please try again."
                    })  
                })
                
            }
            else {
                this.setState({
                    error: "Only the owner of this spot can update its information"
                })
            }
        })
        .catch(err=> {
            console.log(err);
            this.setState({
                error: "Could not connect to database, please try again."
            })
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
            id: this.state.spotId,
            connectionType: connType,
            level: level,
            currentType: currType,
            amps:        this.state.amps.length===0         ? null : parseInt(this.state.amps)     ,
            voltage:     this.state.voltage.length===0      ? null : parseInt(this.state.voltage)     ,
            powerkw:     this.state.power.length===0        ? null : parseInt(this.state.power)     ,
            comments:    this.state.spotComments.length===0 ? null : this.state.spotComments
        }
        spotPut(spotObjPost, this.state.spotId)
        .then(response => {
            console.log("postara to spot:");
            console.log(response);
            let spotId = response.data.id;
            window.location.href=`/spots/${spotId}`;
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not update, try again"
            })
        })
        e.preventDefault()
    }

    render() {
        return (
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">
                    
                <div className="add-station-specific-title">
                        <div className="station-info-title">
                            Update spot
                            {this.state.error!==null && ( 
                                <div className="error-message">
                                    {this.state.error}
                                </div>
                            )}    
                        </div> 
                    </div>
                    {this.state.error===null && (
                        <form id="add-spot-info-container">

                        <div className="add-spot-first-container">                        
                            <input className="add-station-input" id="add-spot-amps" placeholder="Amperes" type="number" step=".01" name="amps" value={this.state.amps} onChange={this.handleInput} />
                            <input className="add-station-input" id="add-spot-voltage" placeholder="Voltage" name="voltage" type="number" step=".01" value={this.state.voltage} onChange={this.handleInput} />
                            <input className="add-station-input" id="add-spot-power" placeholder="Power(kW)" name="power" type="number" step=".01" value={this.state.power} onChange={this.handleInput} />                       
                        </div>
                        
                        <textarea className="add-station-input" id="add-spot-comments" placeholder="Comments" name="comments" value={this.state.comments} onChange={this.handleInput} />                       

                        <div className="add-station-selects-container">
                            <select className="add-station-input" id="add-spot-connection-type" name="connType" value={this.state.connType} onChange={this.handleInput} >
                            {
                                this.state.connTypes.map((key, value) =>{
                                    //console.log(value);
                                    return(
                                        <option key={key.id} value={key.id+",,"+key.title+",,"+key.formalName+",,"+key.category}>{key.title}</option>
                                    )
                                })
                            }
                            </select>
                            <select className="add-station-input" id="add-spot-level" name="level" value={this.state.level} onChange={this.handleInput} >
                            {
                                this.state.levels.map((key, value) =>{
                                    //console.log(value);
                                        return(
                                            <option key={key.id} value={key.id+",,"+key.title+",,"+key.comments+",,"+key.isFastChargeCapable}>{key.title}</option>
                                        )
                                })
                            }
                            </select>
                            <select className="add-station-input" id="add-spot-current-type" name="currType" value={this.state.currType} onChange={this.handleInput} >
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
                        

                        <input id="add-spot-submit" className="submit-button my-button" name="submit" type="submit" value="Submit" onClick={this.handleSubmit}/>
                                                                        
                    </form>
                    )}
                </div>
            </div>

        )
    }


}

export default UpdateSpot;