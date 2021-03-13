import React from 'react';
import Rating from 'react-rating';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import "leaflet/dist/leaflet.css";
import "leaflet/dist/leaflet";

import "./DeviceMap.css";
import logo from './images/thundera.png';
import google_image from './images/Google_image.jpg';
import {getVehicles , getAllStations, getUserProfile, getStationOwnerProfile} from './api';
import StationMap from './StationMap';



class DeviceMap extends React.Component {
  
  constructor(props){
      super(props);
      this.state={
          userId: localStorage.getItem('userId'),
          role: localStorage.getItem('role'),
          error: null,
          stations: [],
          case: this.props.case ? this.props.case : "all",
          //change: false,
          currStation: null,
          vehList: [],
          noVehicles: false,
          usertown: null,
          usercountry: null,
      }
      //this.currStation = null;
      this.attr2 = "Cost Per kWh";
      //this.currStation = null;
      this.showingVehId = null;
      this.chargers = [];
      this.attr1="Vehicles List";
      this.selectEV = this.selectEV.bind(this);  
      this.showStation=this.showStation.bind(this);
      this.handleClick = this.handleClick.bind(this);
  }    

  selectEV = (event) => {
    this.showingVehId = event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''); 
    this.chargers = [];
    // for all my vehicles
    this.state.vehList.forEach(veh => {
      console.log("checking vehicle: " + veh);
      // when you find the chosen one
      if (parseInt(veh[0])===parseInt(this.showingVehId)) {
        console.log("found chosen one");
        // for all tits elements
        veh.forEach((el, index) => {
          // keep the ones after the second one, which are the chargers portnames
          if (index>1) {
            this.chargers.push(el);
          }
        })
      }
    })
    console.log("chargers: " + this.chargers); 
    this.setState({
        //showingVehId: event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''),
        error: null,
    })
    console.log("pressed: " + event.target.innerText.substring(0, event.target.innerText.indexOf(':')).replace('Vehicle ', ''))
    console.log("pressed: " + this./*state.*/showingVehId)
  }

  handleClick = (e) => {
    let area = document.getElementById('curr-station-container') ? document.getElementById('curr-station-container') : null;
    if (area) {
      if (!area.contains(e.target) && area.style.display!=="none") {
        area.style.display="none";
      }
      else if (area.contains(e.target) && area.style.display==="none") {
        area.style.display="block";
      }
    }
  }

  showStation = (e) => {
    console.log('Open station pop up')
    //window.location.href=`/stations/${this.state.stationId}`
    let str = e.target.innerText;
    this.setState({
      //change: !this.state.change,
      currStation: parseInt(str.substr(1,str.indexOf(')'))),
    })
    let area = document.getElementById('curr-station-container') ? document.getElementById('curr-station-container') : null;
    if (area) {
      area.style.display="block";
    }
    //this.currStation = parseInt(str.substr(1,str.indexOf(')')));
    console.log("showing: " + this.state.currStation);
    e.preventDefault();
  }

  componentWillMount() {
    document.addEventListener('mousedown', this.handleClick, false);
  }

  componentWillUnmount() {
    document.removeEventListener('mousedown', this.handleClick, false);

  }

  componentDidMount () {
    if (this.state.userId && this.state.role==="VehicleOwner")getUserProfile(this.state.userId).then(response => {this.setState({usertown: response.data["Town"],usercountry: response.data["Country"],})})

      getAllStations()
      .then(response => {
          console.log(response);
          this.setState({
              stations: response.data["StationsList"]
          })
      })
      .catch(err => {
          console.log(err);
          this.setState({
              error: "No stations found, please try again later"
          })
      })
      if (this.state.userId && this.state.role==="VehicleOwner") {
        getVehicles(this.state.userId)
        .then( response => {
            console.log(response);
            let tempVehiclesList = [];
            response.data[this.attr1].forEach(element => {
                let acPorts = element["Ac Charger Ports"];
                let dcPorts = element["Dc Charger Ports"];
                let result = [element.Vehicle, element.Brand+" "+element.Type];
                acPorts.forEach(el => {
                  result.push(el["Port Name"])
                })
                dcPorts.forEach(el => {
                  result.push(el["Port Name"])
                })
                tempVehiclesList.push(result);     // spot's id
            });
            this.setState({
                vehList: tempVehiclesList,
                //showingVehId: tempVehiclesList[0][0],
            });
            console.log("Vehicles: ");
            console.log(this.state.vehList);
            //console.log(this.state.showingVehId);

        })
        .catch(err=> {
            console.log(err);
            this.setState({
                noVehicles: true,
            })
        })
      }
    
  }

  render() {

    const L = require('leaflet');
    const town = this.state.usertown;
    const city = this.state.usercity;
    const linkg = "https://www.google.com/maps/dir/"+town+"+"+city;
    const yellowIcon = new L.Icon({
      iconUrl: require('./images/mapIcons/yellow.png'),
      iconRetinaUrl: require('./images/mapIcons/yellow.png'),
      iconAnchor: null,
      popupAnchor: [-3, -20],
      shadowUrl: null,
      shadowSize: null,
      shadowAnchor: null,
      iconSize: new L.Point(40, 60),
      className: 'leaflet-div-icon'
    })
    const greenIcon = new L.Icon({
      iconUrl: require('./images/mapIcons/green.png'),
      iconRetinaUrl: require('./images/mapIcons/green.png'),
      iconAnchor: null,
      popupAnchor: [-3, -20],
      shadowUrl: null,
      shadowSize: null,
      shadowAnchor: null,
      iconSize: new L.Point(40, 60),
      className: 'leaflet-div-icon'
    })
    const redIcon = new L.Icon({
      iconUrl: require('./images/mapIcons/red.png'),
      iconRetinaUrl: require('./images/mapIcons/red.png'),
      iconAnchor: null,
      popupAnchor: [-3, -20],
      shadowUrl: null,
      shadowSize: null,
      shadowAnchor: null,
      iconSize: new L.Point(40, 60),
      className: 'leaflet-div-icon'
    })

    console.log("Parent Data div for station: " + this.state.currStation)
    
      return (
            <div className="page padding-bottom padding-top">
              <h5 className="color2 margin-bottom"> Welcome, pick the station you're looking for from the map</h5>

              {this.state.userId && !this.state.noVehicles &&
                <div className="vehicle-map-select">
                  <h5 className="color2"> Choose one of your vehicles to see its compatible stations</h5>
                  <div className="spots-buttons-container center-content flex-layout margin-top">
                      {   
                          this.state.vehList.map((value, index) => {
                              //console.log(index);
                              return (<button className="choice-button my-button flex-item-small" key={value[0]} onClick={this.selectEV}>Vehicle {value[0]}: {value[1]}</button>)
                          })
                      }
                  </div>
                </div>
              }

              { this.state.userId && this.state.role==="VehicleOwner" && this.showingVehId &&
                <div className="map-pop-up-container">
                {this.state.currStation && /*this.state.change!==null &&*/
                  <StationMap id={this.state.currStation} />
                }
                <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}>
                  <TileLayer attribution='&amp;copy <a href="http://osm.org/copyright">OpenStreetMap</a> contributors' url="https://{s}.tile.osm.org/{z}/{x}/{y}.png" /> 
                      {
                          this.state.stations.map((value, key)=> {

                            let spots = value.Spots;
                            let spotsAvailable = 0;
                            let spotsOperational = 0;
                            let pickedIcon = redIcon;
                            spots.forEach(spot => {
                              if (this.chargers.includes(spot.Category)) {
                                spotsAvailable += spot.QuantityAvailable;
                                spotsOperational += spot.QuantityOperational;
                              }
                            })
                            if (spotsAvailable>0 && spotsAvailable<6) {
                              pickedIcon = yellowIcon;
                            }
                            else if (spotsAvailable>6) {
                              pickedIcon = greenIcon;
                            }

                            if (value.Latitude && value.Longtitude) {

                              return(
                                  <Marker key={key} 
                                          position={[ value.Latitude, value.Longtitude]}
                                          icon={pickedIcon}
                                          onMouseOver={(e) => {
                                              e.target.openPopup();
                                          }}
                                          onMouseOut={(e) => {
                                              e.target.closePopup();
                                          }}
                                  >
                                    <Popup className="request-popup">
                                      <div className="pop-up-content center-content color2"> 
                                        <div className="pop-up-head center-content">
                                          <a onClick={this.showStation}>
                                          ({value.Id}){value.Title}
                                          </a>
                                        </div>
                                        
                                        <div className="cost-per-kWh-container center-content">
                                          Cost Per kWh: {value[this.attr2]}€
                                        </div>
                                        
                                        <div className="rating-text center-content">
                                          Rating:<br></br>
                                          <Rating initialRating={value.Rating} readonly={true} fullSymbol={<img className="logorating" src={logo} alt="Thundercars-logo"/>}></Rating>
                                        </div>

                                        <div className="spots-free">
                                          Spots available: {spotsAvailable} / {spotsOperational} {this.state.usertown}
                                        </div>

                                        <div className="address-extras-container center-content">
                                          Address Line: {value["First Address"] ? value["First Address"] : "-"} <br></br>
                                          <a href={linkg+"/"+value["First Address"]+" "+value["Town"]} target="_blank"  class="buttongoogle">
                                            Google Directions:
                                            <img className="google_image" src={google_image} alt="Thundercars-logo" height="20px" width = "20px" overflow ="hidden"/>
                                          </a><br></br>
                                          Tel: {value["Contact Telephone 1"] ? value["Contact Telephone 1"] : "-"}
                                        </div>
                                      </div>
                                    </Popup>
                                  </Marker>
                              )
                            }
                          })
                      }  
                </MapContainer>
              </div>
              }

              { (!this.state.userId || this.state.role!=="VehicleOwner") &&
                <div className="map-pop-up-container">
                {this.state.currStation && /*this.state.change!==null &&*/
                  <StationMap id={this.state.currStation} />
                }
                <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}>
                  <TileLayer attribution="&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors" url="https://{s}.tile.osm.org/{z}/{x}/{y}.png" /> 
                      {
                          this.state.stations.map((value, key)=> {
                            let spots = value.Spots;
                            let spotsAvailable = 0;
                            let spotsOperational = 0;
                            let pickedIcon = redIcon;
                            spots.forEach(spot => {
                              spotsAvailable += spot.QuantityAvailable;
                              spotsOperational += spot.QuantityOperational;
                            })
                            if (spotsAvailable>0 && spotsAvailable<6) {
                              pickedIcon = yellowIcon;
                            }
                            else if (spotsAvailable>6) {
                              pickedIcon = greenIcon;
                            }

                            if (value.Latitude && value.Longtitude) {

                              return(
                                  <Marker key={key} 
                                          position={[ value.Latitude, value.Longtitude]}
                                          icon={pickedIcon}
                                          onMouseOver={(e) => {
                                              e.target.openPopup();
                                          }}
                                          onMouseOut={(e) => {
                                              e.target.closePopup();
                                          }}
                                  >
                                    <Popup className="request-popup">
                                      <div className="pop-up-content center-content color2"> 
                                        <div className="pop-up-head center-content">
                                          <a onClick={this.showStation}>
                                          ({value.Id}){value.Title}
                                          </a>
                                        </div>
                                        
                                        <div className="cost-per-kWh-container center-content">
                                          Cost Per kWh: {value[this.attr2]}€
                                        </div>
                                        
                                        <div className="rating-text center-content">
                                          Rating:<br></br>
                                          <Rating initialRating={value.Rating} readonly={true} fullSymbol={<img className="logorating" src={logo} alt="Thundercars-logo"/>}></Rating>
                                        </div>

                                        <div className="spots-free">
                                          Spots available: {spotsAvailable} / {spotsOperational}
                                        </div>

                                        <div className="address-extras-container center-content">
                                          Address Line: {value["First Address"] ? value["First Address"] : "-"} <br></br>
                                          <a href={linkg+"/"+value["First Address"]+" "+value["Town"]} target="_blank"  class="buttongoogle">
                                            Google Directions:
                                            <img className="google_image" src={google_image} alt="Thundercars-logo" height="20px" width = "20px" overflow ="hidden"/>
                                          </a><br></br>
                                          Tel: {value["Contact Telephone 1"] ? value["Contact Telephone 1"] : "-"}
                                        </div>
                                      </div>
                                    </Popup>
                                  </Marker>
                              )
                            }
                          })
                      }
                </MapContainer>
              </div>
              }

            </div>
      
      );
  }
}

export default DeviceMap;