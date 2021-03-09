import React from 'react';
import Rating from 'react-rating';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
//import { geosearch } from 'esri-leaflet-geocoder';
//import { BasemapLayer, FeatureLayer } from 'react-esri-leaflet/v2';
import EsriLeafletGeoSearch from 'react-esri-leaflet/plugins/EsriLeafletGeoSearch';
import "leaflet/dist/leaflet.css";
import "esri-leaflet-geocoder/dist/esri-leaflet-geocoder.css";
import 'esri-leaflet';
//import Search from "react-leaflet-search";
//import { LatLng } from "leaflet";

import "leaflet/dist/leaflet";
import "esri-leaflet-geocoder/dist/esri-leaflet-geocoder";

import "./DeviceMap.css";
import logo from './images/thundera.png';
import {getVehicles , getAllStations} from './api';
import StationMap from './StationMap';
//import L from "leaflet";
//import * as ELG from "esri-leaflet-geocoder";

/*
    class SpecStation extends React.Component {
        
      constructor(props) {
          super(props);
          this.state = {
              key: this.props.key,
              stationId: this.props.stationId,
              title: this.props.title,
              longtitude: this.props.longtitude,
              latitude: this.props.latitude,
              rating: this.props.rating,
              costperkw: this.props.costperkw,
              addressLine: this.props.addressline ? this.props.addressline : "-",
              telephone1 : this.props.tel1 ? this.props.tel1 : "-",   
          }
          this.attr2 = "Cost Per kWh";
          //this.showing= false;
          this.showStation=this.showStation.bind(this);
      }

      showStation = () => {
        console.log('Open station pop up')
        window.location.href=`/stations/${this.state.stationId}`
        //this.showing=true;
        //console.log("showing: " + this.showing);
      }

      /*
              {this.showing===true &&
              <StationMap id={this.state.stationId} />
            }
      */
    /*
      render() {
        
          return ( 
            <div>
            <StationMap id="2" />
            <Marker position={[ this.state.latitude+0.00001, this.state.longtitude+0.0001]} >
              <Popup className="request-popup">
                <div className="pop-up-content center-content color2"> 
                  <div className="pop-up-head center-content">
                    <a onClick={this.showStation}>
                      {this.props.title}
                    </a>
                  </div>
                  
                  <div className="cost-per-kWh-container center-content">
                    Cost Per kWh: {this.props.costperkw}€
                  </div>
                  
                  <div className="rating-text center-content">
                    Rating:<br></br>
                    <Rating initialRating={this.props.rating} readonly={true} fullSymbol={<img className="logorating" src={logo} alt="Thundercars-logo"/>}></Rating>
                  </div>

                  <div className="address-extras-container center-content">
                    Address Line: {this.state.addressLine} <br></br>
                    Tel: {this.state.telephone1}
                  </div>
                </div>
              </Popup>
            </Marker>
            </div>
          );

      }

    }
*/


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
      //this.leafletMap = React.createRef();
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
      //const control = geosearch();
      //control.addTo(this.leafletMap.current);
      /*const map = this.leafletMap.current;
      const searchControl = new ELG.Geosearch().addTo(map);
      const results = new L.LayerGroup().addTo(map);
  
      searchControl.on("results", function(data) {
        results.clearLayers();
        for (let i = data.results.length - 1; i >= 0; i--) {
          results.addLayer(L.marker(data.results[i].latlng));
        }
      });*/
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
                <div classname="vehicle-map-select">
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
                <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}
                       /* ref={m => {
                          this.leafletMap = m;
                        }}*/>
                  <TileLayer attribution='&amp;copy <a href="http://osm.org/copyright">OpenStreetMap</a> contributors' url="https://{s}.tile.osm.org/{z}/{x}/{y}.png" /> 
                      {
                          this.state.stations.map((value, key)=> {
                            /*<SpecStation
                                  key= {key}
                                  stationId = {value.Id}
                                  longtitude = {value.Longtitude} 
                                  latitude = {value.Latitude}
                                  title = {value.Title}
                                  rating = {value.Rating}
                                  costperkw = {value[this.attr2]}
                                  addressline = {value["First Address"]}
                                  tel1 = {value["Contact Telephone 1"]}
                                  accessComm = {value["Access Comments"]}
                                  */
 
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
                                          Spots available: {spotsAvailable} / {spotsOperational}
                                        </div>

                                        <div className="address-extras-container center-content">
                                          Address Line: {value["First Address"] ? value["First Address"] : "-"} <br></br>
                                          Tel: {value["Contact Telephone 1"] ? value["Contact Telephone 1"] : "-"}
                                        </div>
                                      </div>
                                    </Popup>
                                  </Marker>
                              )
                            }
                          })
                      }  

                      <EsriLeafletGeoSearch useMapBounds={false} position="topleft" 
                        eventHandlers={{
                          requeststart: () => console.log('Started request...'),
                          requestend: () => console.log('Ended request...'),
                          results: (r) => console.log(r)
                        }}
                      />      
                </MapContainer>
              </div>
              }

              { (!this.state.userId || this.state.role!=="VehicleOwner") &&
                <div className="map-pop-up-container">
                {this.state.currStation && /*this.state.change!==null &&*/
                  <StationMap id={this.state.currStation} />
                }
                <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}
                        /*ref={m => {
                          this.leafletMap = m;
                        }}*/>
                  <TileLayer attribution="&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors" url="https://{s}.tile.osm.org/{z}/{x}/{y}.png" /> 
                      {
                          this.state.stations.map((value, key)=> {
                            /*<SpecStation
                                  key= {key}
                                  stationId = {value.Id}
                                  longtitude = {value.Longtitude} 
                                  latitude = {value.Latitude}
                                  title = {value.Title}
                                  rating = {value.Rating}
                                  costperkw = {value[this.attr2]}
                                  addressline = {value["First Address"]}
                                  tel1 = {value["Contact Telephone 1"]}
                                  accessComm = {value["Access Comments"]}
                                  */  
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
                                          Tel: {value["Contact Telephone 1"] ? value["Contact Telephone 1"] : "-"}
                                        </div>
                                      </div>
                                    </Popup>
                                  </Marker>
                              )
                            }
                          })
                      }

                      <EsriLeafletGeoSearch useMapBounds={false} position="topleft" 
                        eventHandlers={{
                          requeststart: () => console.log('Started request...'),
                          requestend: () => console.log('Ended request...'),
                          results: (r) => console.log(r)
                        }}
                      /> 
                </MapContainer>
              </div>
              }

            </div>
      
      );
  }
}
/*
                      <EsriLeafletGeoSearch useMapBounds={false} position="topleft" 
                        eventHandlers={{
                          requeststart: () => console.log('Started request...'),
                          requestend: () => console.log('Ended request...'),
                          results: (r) => console.log(r)
                        }}
                      /> 
*/
export default DeviceMap;