import React from 'react';
import './Station.css';
import MyNavbar from './MyNavbar';
import {getOneStation, getStations, stationDelete} from './api'; 

class Station extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            stationsId: this.props.id,
            title: null,
            uuid: null,
            currentProvName: null,
            operator: null,
            rating: null,
            costPerKWh: null,
            comments: null,
            dateCreated: null,
            statusType: null,
            submissionStatus: null,
            usageType: null,
            firstAddress: null,
            secondAddress: null,
            Town: null,
            StateOrProvince: null,
            postCode: null,
            Latitude: null,
            Longtitude: null,
            contactTel1: null,
            contactTel2: null,
            contactEmail: null,
            accessComments: null,
            addressRelUrl: null,
            addressGenComments: null,
            country: null,
            continent: null,
            spotsList: [],
            error: null,
            success: null,
            ownership: false,
            showModal: false,
        }
        this.attr1 = "Current Provider's Name";
        this.attr2 = "Cost Per kWh";
        this.attr3 = "Date Created";
        this.attr4 = "Status Type";
        this.attr5 = "Submission Status";
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
        this.updateStation = this.updateStation.bind(this);
        this.preDelete = this.preDelete.bind(this);
        this.hideModal = this.hideModal.bind(this);
        this.deleteStation = this.deleteStation.bind(this);
    }

    deleteStation = () => {
        stationDelete(this.state.stationsId)
        .then(response => {
            console.log(response);
            this.setState({
                success: "Station deleted successfully",
                error: null,
            })
            window.location.href="mystations"
        })
        .catch(err => {
            console.log(err);
            this.setState({
                success: null,
                error: "Could not delete station",
            })
        })
    }

    preDelete = () => {
        this.setState({
            showModal: true,
        })
    }

    hideModal = () => {
        this.setState({
            showModal: false,
        })
    }


    updateStation = () => {
        window.location.href=`/stations/${this.state.stationsId}/update`
    }

    componentDidMount() {
        getStations(this.state.userId)
        .then(response => {
            console.log(response);
            response.data["StationsList"].forEach(el => {
                console.log(el.Id);
                if (parseInt(el.Id)===parseInt(this.state.stationsId)) {
                    console.log("I own it");
                    this.setState({
                        ownership: true,
                    })
                }
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                ownership: false,
            })
        })       
        getOneStation(this.state.stationsId)
        .then( response => {
            console.log(response);
            this.setState({
                title:               response.data.Title        ? (response.data.Title.length===0        ? "-" :response.data.Title        ) : "-",  
                uuid:                response.data.UUID         ? (response.data.UUID.length===0         ? "-" :response.data.UUID         ) : "-",  
                currentProvName:     response.data[this.attr1]  ? (response.data[this.attr1].length===0  ? "-" :response.data[this.attr1]  ) : "-",
                rating:              response.data.Rating       ? (response.data.Rating.length===0       ? "-" :response.data.Rating       ) : "-",
                costPerKWh :         response.data[this.attr2]  ? (response.data[this.attr2].length===0  ? "-" :response.data[this.attr2]  ) : "-",
                comments:            response.data.Comments     ? (response.data.Comments.length===0     ? "-" :response.data.Comments     ) : "-",
                dateCreated:         response.data[this.attr3]  ? (response.data[this.attr3].length===0  ? "-" :response.data[this.attr3]  ) : "-",
                statusType:          response.data[this.attr4]  ? (response.data[this.attr4].length===0  ? "-" :response.data[this.attr4]  ) : "-",
                submissionStatus:    response.data[this.attr5]  ? (response.data[this.attr5].length===0  ? "-" :response.data[this.attr5]  ) : "-",
                usageType:           response.data[this.attr6]  ? (response.data[this.attr6].length===0  ? "-" :response.data[this.attr6]  ) : "-",
                operator:            response.data["Operator's Name"] ? (response.data["Operator's Name"].length===0 ? "-" :response.data["Operator's Name"] ) : "-",
                firstAddress:        response.data[this.attr7]  ? (response.data[this.attr7].length===0  ? "-" :response.data[this.attr7]  ) : "-",
                secondAddress:       response.data[this.attr8]  ? (response.data[this.attr8].length===0  ? "-" :response.data[this.attr8]  ) : "-",
                Town:                response.data.Town         ? (response.data.Town.length===0         ? "-" :response.data.Town         ) : "-",
                StateOrProvince:     response.data[this.attr9]  ? (response.data[this.attr9].length===0  ? "-" :response.data[this.attr9]  ) : "-",
                postCode:            response.data.Postcode     ? (response.data.Postcode.length===0     ? "-" :response.data.Postcode     ) : "-",
                Latitude:            response.data.Latitude     ? (response.data.Latitude.length===0     ? "-" :response.data.Latitude     ) : "-",
                Longtitude:          response.data.Longtitude   ? (response.data.Longtitude.length===0   ? "-" :response.data.Longtitude   ) : "-", 
                contactTel1:         response.data[this.attr10] ? (response.data[this.attr10].length===0 ? "-" :response.data[this.attr10] ) : "-",
                contactTel2:         response.data[this.attr11] ? (response.data[this.attr11].length===0 ? "-" :response.data[this.attr11] ) : "-",
                contactEmail:        response.data[this.attr12] ? (response.data[this.attr12].length===0 ? "-" :response.data[this.attr12] ) : "-",
                accessComments:      response.data[this.attr13] ? (response.data[this.attr13].length===0 ? "-" :response.data[this.attr13] ) : "-",
                addressRelUrl:       response.data[this.attr14] ? (response.data[this.attr14].length===0 ? "-" :response.data[this.attr14] ) : "-",
                addressGenComments:  response.data[this.attr15] ? (response.data[this.attr15].length===0 ? "-" :response.data[this.attr15] ) : "-",
                country:             response.data.Country      ? (response.data.Country.length===0      ? "-" :response.data.Country      ) : "-",
                continent:           response.data.Continent    ? (response.data.Continent.length===0    ? "-" :response.data.Continent    ) : "-",   
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

        return (
            
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">
                    <div className="specific-title">
                        <div className="station-info-title">Station:</div> 
                        {this.state.title}
                        {
                            this.state.error &&
                                <div className="error-message">
                                    {this.state.error}
                                </div>
                        }
                        {
                            this.state.success && 
                                <div className="success-message">
                                    {this.state.success}
                                </div>
                        }
                    </div>

                    {
                        !this.state.error &&
                    
                            <div className="station-page-info-container box-colors margin-top-small">
                                
                                <div className="station-info-title darker">UUID:</div> 
                                <div className="station-info darker">{this.state.uuid}</div>
                                
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
                                
                                <div className="station-info-title darker">Date Created: </div>
                                <div className="station-info darker">{this.state.dateCreated} </div>
                                
                                <div className="station-info-title">Status Type: </div>
                                <div className="station-info">{this.state.statusType}</div>
                                
                                <div className="station-info-title darker">Submission Status: </div>
                                <div className="station-info darker">{this.state.submissionStatus}</div>
                                
                                
                                <div className="station-info-title">Usage Type:</div>
                                <div className="station-info">{this.state.usageType}</div>

                                <div className="station-info-title darker">First Address:</div>
                                <div className="station-info darker">{this.state.firstAddress}</div>
                                
                                <div className="station-info-title">Secondary Address:</div>
                                <div className="station-info">{this.state.secondAddress}</div>
                                
                                <div className="station-info-title darker">Town:</div>
                                <div className="station-info darker">{this.state.Town}</div>
                                
                                
                                <div className="station-info-title">State/Province:</div>
                                <div className="station-info">{this.state.StateOrProvince}</div>
                                
                                <div className="station-info-title darker">Postcode:</div>
                                <div className="station-info darker">{this.state.postCode}</div>
                                
                                <div className="station-info-title">Latitude:</div>
                                <div className="station-info">{this.state.Latitude}</div>

                                <div className="station-info-title darker">Longtitude:</div>
                                <div className="station-info darker">{this.state.Longtitude}</div>
                                
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
                                
                                <div className="station-info-title">Country:</div>
                                <div className="station-info">{this.state.country}</div>
                                
                                <div className="station-info-title darker">Continent:</div>
                                <div className="station-info darker">{this.state.continent}</div>
                                
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
                    
                    {
                        this.state.ownership===true &&
                            <div className="station-update-button-container center-content">
                            
                                <button className="update-button my-button" onClick={this.updateStation}>
                                    Update station
                                </button>
                
                                <button className="delete-button my-button margin-small" onClick={this.preDelete}>
                                    Delete station
                                </button>
                            
                            </div>
        
                    }

                    {
                        this.state.showModal===true && 
                            <div className="modal-box box-colors">
                                <div className="message">
                                    Are you sure you want delete this station?<br></br>
                                    All of its statistics will be lost...
                                </div>
                                <div className="modal-buttons-container flex-layout margin-top-small">
                                    <button className="update-button my-button flex-item-expand margin-top-small" onClick={this.hideModal}>No, I changed my mind</button>
                                    <button className="delete-button my-button flex-item-expand" onClick={this.deleteStation}>Yes, delete anyway</button>                                        
                                </div>
                            </div>
                    
                    }

                </div>
            </div>
            
        )
    }
}

export default Station;