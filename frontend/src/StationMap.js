import React from 'react';
import './Station.css';
import {getOneStation} from './api'; 

class StationMap extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            stationsId: this.props.id,
            title: null,
            currentProvName: null,
            operator: null,
            rating: null,
            costPerKWh: null,
            comments: null,
            statusType: null,
            usageType: null,
            firstAddress: null,
            Town: null,
            StateOrProvince: null,
            contactTel1: null,
            contactTel2: null,
            contactEmail: null,
            accessComments: null,
            addressRelUrl: null,
            addressGenComments: null,
            spotsList: [],
            error: null,
        }
        this.attr1 = "Current Provider's Name";
        this.attr2 = "Cost Per kWh";
        this.attr4 = "Status Type";
        this.attr6 = "Usage Type";
        this.attr7 = "First Address";
        this.attr8 = "Secondary Address";
        this.attr9 = "State / Province";
        this.attr10 = "Contact Telephone 1";
        this.attr11 = "Contact Telephone 2";
        this.attr12 = "Contact Email";
        this.attr13 = "Access Comments";
        this.attr14 = "Address' Related URL";
        this.attr15 = "Adderss' General Comments";
        this.stationRedirect = this.stationRedirect.bind(this);
    }

    componentDidMount() {     
        getOneStation(this.state.stationsId)
        .then( response => {
            console.log(response);
            this.setState({
                title:               response.data.Title        ? (response.data.Title.length===0        ? "-" :response.data.Title        ) : "-",  
                currentProvName:     response.data[this.attr1]  ? (response.data[this.attr1].length===0  ? "-" :response.data[this.attr1]  ) : "-",
                rating:              response.data.Rating       ? (response.data.Rating.length===0       ? "-" :response.data.Rating       ) : "-",
                costPerKWh :         response.data[this.attr2]  ? (response.data[this.attr2].length===0  ? "-" :response.data[this.attr2]  ) : "-",
                comments:            response.data.Comments     ? (response.data.Comments.length===0     ? "-" :response.data.Comments     ) : "-",
                statusType:          response.data[this.attr4]  ? (response.data[this.attr4].length===0  ? "-" :response.data[this.attr4]  ) : "-",
                usageType:           response.data[this.attr6]  ? (response.data[this.attr6].length===0  ? "-" :response.data[this.attr6]  ) : "-",
                operator:            response.data["Operator's Name"] ? (response.data["Operator's Name"].length===0 ? "-" :response.data["Operator's Name"] ) : "-",
                firstAddress:        response.data[this.attr7]  ? (response.data[this.attr7].length===0  ? "-" :response.data[this.attr7]  ) : "-",
                secondAddress:       response.data[this.attr8]  ? (response.data[this.attr8].length===0  ? "-" :response.data[this.attr8]  ) : "-",
                Town:                response.data.Town         ? (response.data.Town.length===0         ? "-" :response.data.Town         ) : "-",
                StateOrProvince:     response.data[this.attr9]  ? (response.data[this.attr9].length===0  ? "-" :response.data[this.attr9]  ) : "-",
                contactTel1:         response.data[this.attr10] ? (response.data[this.attr10].length===0 ? "-" :response.data[this.attr10] ) : "-",
                contactTel2:         response.data[this.attr11] ? (response.data[this.attr11].length===0 ? "-" :response.data[this.attr11] ) : "-",
                contactEmail:        response.data[this.attr12] ? (response.data[this.attr12].length===0 ? "-" :response.data[this.attr12] ) : "-",
                accessComments:      response.data[this.attr13] ? (response.data[this.attr13].length===0 ? "-" :response.data[this.attr13] ) : "-",
                addressRelUrl:       response.data[this.attr14] ? (response.data[this.attr14].length===0 ? "-" :response.data[this.attr14] ) : "-",
                addressGenComments:  response.data[this.attr15] ? (response.data[this.attr15].length===0 ? "-" :response.data[this.attr15] ) : "-",
                spotsList:           response.data.Spots, 
            });
            console.log(this.state.spotsList);
        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not find station info, please try again later"
            })
        })
    }

    stationRedirect = () => {
        window.location.href=`/stations/${this.state.stationsId}`;
    }

    componentDidUpdate(prevProps) {
        if (this.props.id !== prevProps.id) {
            console.log("UPDATED")
            getOneStation(this.props.id)
            .then( response => {
                console.log(response);
                this.setState({
                    title:               response.data.Title        ? (response.data.Title.length===0        ? "-" :response.data.Title        ) : "-",  
                    currentProvName:     response.data[this.attr1]  ? (response.data[this.attr1].length===0  ? "-" :response.data[this.attr1]  ) : "-",
                    rating:              response.data.Rating       ? (response.data.Rating.length===0       ? "-" :response.data.Rating       ) : "-",
                    costPerKWh :         response.data[this.attr2]  ? (response.data[this.attr2].length===0  ? "-" :response.data[this.attr2]  ) : "-",
                    comments:            response.data.Comments     ? (response.data.Comments.length===0     ? "-" :response.data.Comments     ) : "-",
                    statusType:          response.data[this.attr4]  ? (response.data[this.attr4].length===0  ? "-" :response.data[this.attr4]  ) : "-",
                    usageType:           response.data[this.attr6]  ? (response.data[this.attr6].length===0  ? "-" :response.data[this.attr6]  ) : "-",
                    operator:            response.data["Operator's Name"] ? (response.data["Operator's Name"].length===0 ? "-" :response.data["Operator's Name"] ) : "-",
                    firstAddress:        response.data[this.attr7]  ? (response.data[this.attr7].length===0  ? "-" :response.data[this.attr7]  ) : "-",
                    secondAddress:       response.data[this.attr8]  ? (response.data[this.attr8].length===0  ? "-" :response.data[this.attr8]  ) : "-",
                    Town:                response.data.Town         ? (response.data.Town.length===0         ? "-" :response.data.Town         ) : "-",
                    StateOrProvince:     response.data[this.attr9]  ? (response.data[this.attr9].length===0  ? "-" :response.data[this.attr9]  ) : "-",
                    contactTel1:         response.data[this.attr10] ? (response.data[this.attr10].length===0 ? "-" :response.data[this.attr10] ) : "-",
                    contactTel2:         response.data[this.attr11] ? (response.data[this.attr11].length===0 ? "-" :response.data[this.attr11] ) : "-",
                    contactEmail:        response.data[this.attr12] ? (response.data[this.attr12].length===0 ? "-" :response.data[this.attr12] ) : "-",
                    accessComments:      response.data[this.attr13] ? (response.data[this.attr13].length===0 ? "-" :response.data[this.attr13] ) : "-",
                    addressRelUrl:       response.data[this.attr14] ? (response.data[this.attr14].length===0 ? "-" :response.data[this.attr14] ) : "-",
                    addressGenComments:  response.data[this.attr15] ? (response.data[this.attr15].length===0 ? "-" :response.data[this.attr15] ) : "-",
                    spotsList:           response.data.Spots, 
                });
                console.log(this.state.spotsList);
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not find station info, please try again later"
                })
            })
    
        }
    }

    spotPageRedirect = (event) => {
        let id = event.target.innerText;
        localStorage.removeItem('spotId');
        if (id.includes(", ")) {
            window.location.href=`/spots/${id.replace(", ", "")}`;
        }
        else {
            window.location.href=`/spots/${id.replace(",", "")}`;
        }
    }

    render() {
        console.log("Data div for station: " + this.state.stationsId)
        return (
            
            <div id="curr-station-container" className="station-pop-up-container more-blur">
                <div className="specific-title">
                    <a className="station-info-title station-pop-up-link" onClick={this.stationRedirect}>Station: {this.state.title}</a> 
                </div>

                {
                    !this.state.error &&
            
                    <div className="station-pop-up-info-container">
                                                        
                        <div className="station-info-title">Current Provider:</div> 
                        <div className="station-info">{this.state.currentProvName}</div>
                        
                        <div className="station-info-title darker">Operator:</div>
                        <div className="station-info darker">{this.state.operator}</div>
                    
                        <div className="station-info-title">Rating: </div>
                        <div className="station-info">{this.state.rating}</div>
                        
                        <div className="station-info-title darker">Cost Per kWh: </div>
                        <div className="station-info darker">{this.state.costPerKWh}</div>
                    
                        <div className="station-info-title">Comments: </div> 
                        <div className="station-info">{this.state.comments}</div>
                                                        
                        <div className="station-info-title">Status Type: </div>
                        <div className="station-info">{this.state.statusType}</div>
                        
                        <div className="station-info-title">Usage Type:</div>
                        <div className="station-info">{this.state.usageType}</div>

                        <div className="station-info-title darker">First Address:</div>
                        <div className="station-info darker">{this.state.firstAddress}</div>
                        
                        <div className="station-info-title darker">Town:</div>
                        <div className="station-info darker">{this.state.Town}</div>
                        
                        <div className="station-info-title">State/Province:</div>
                        <div className="station-info">{this.state.StateOrProvince}</div>
                        
                        <div className="station-info-title">Telephone 1:</div>
                        <div className="station-info">{this.state.contactTel1}</div>
                        
                        <div className="station-info-title darker">Telephone 2:</div>
                        <div className="station-info darker">{this.state.contactTel2}</div>
                    
                        <div className="station-info-title">Email:</div>
                        <div className="station-info">{this.state.contactEmail}</div>

                        <div className="station-info-title darker">Address general comments:</div>
                        <div className="station-info darker">{this.state.addressGenComments}</div>

                        <div className="station-info-title">Access comments:</div>
                        <div className="station-info">{this.state.accessComments}</div>
                        
                        <div className="station-info-title darker">Address relative URL:</div>
                        <div className="station-info darker">{this.state.addressRelUrl}</div>
                                                        
                        <div className="station-info-title">Spots:</div>

                        <div className="spots-ids-container">
                            {
                                this.state.spotsList.map((value, key) => {
                                    return(<a className="spot-link" onClick={this.spotPageRedirect} key={key}><u>{value.Spot}</u>, </a>)
                                })
                            }
                        </div>

                    </div>
                }
                    
            </div>
            
        )
    }
}

export default StationMap;