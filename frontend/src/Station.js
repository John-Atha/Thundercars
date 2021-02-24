import React from 'react';
import './Station.css';
import MyNavbar from './MyNavbar';
import {getOneStation} from './api'; 

class Station extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            // if page is visited via the url, then this.props.id has the wanted station id
            // (see index.js for case 1)
            // else
            // page is visited via the hyperlink at myStationsPage
            // and then we have saved the stationId in localStorage  
            stationsId: this.props.id ? this.props.id : localStorage.getItem('stationId'),
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
            spotsList: []
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
    }

    componentDidMount() {
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
                operator:            response.data.Operator     ? (response.data.Operator.length===0     ? "-" :response.data.Operator     ) : "-",
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
                spotsList:           response.data.Spots        ? (response.data.Spots.length===0        ? "-" :response.data.Spots        ) : "-" 
            });
            console.log(this.state.spotsList);
        })
        .catch(err => {
            console.log(err);
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

        if (!this.state.userId || !this.state.role || this.state.role==='VehicleOwner') {
            window.location.href="/";
        }
        else {
            return (
                
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            <div className="station-info-title">Station:</div> 
                            {this.state.title}
                        </div>
                        <div className="station-page-info-container">
                            
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
                            <div className="station-info darker">{this.state.town}</div>
                            
                            
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
                                    this.state.spotsList.map((value, key, index) => {
                                        return(<a className="spot-link" onClick={this.spotPageRedirect} key={key}>{value.Spot}, </a>)
                                    })
                                }
                            </div>
    
                        </div>
                    </div>
                </div>
                
            )
        }
    }
}

export default Station;