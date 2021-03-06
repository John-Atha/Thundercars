import React from 'react';
import Rating from 'react-rating';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import "./DeviceMap.css";
import logo from './images/thundera.png';
import {getOneStation , getAllStations} from './api';
import StationMap from './StationMap';

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
          error: null,
          stations: [],
          case: this.props.case ? this.props.case : "all",
          //change: false,
          currStation: null,
      }
      //this.currStation = null;
      this.attr2 = "Cost Per kWh";
      //this.currStation = null;
      this.showStation=this.showStation.bind(this);
      this.handleClick = this.handleClick.bind(this);
  }    

  handleClick = (e) => {
    let area = document.getElementById('curr-station-container') ? document.getElementById('curr-station-container') : null;
    if (area) {
      if (!area.contains(e.target)) {
        area.style.display="none";
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
  }

  render() {
    console.log("Parent Data div for station: " + this.state.currStation)
    return (
          <div className="map-pop-up-container">
            {this.state.currStation && /*this.state.change!==null &&*/
              <StationMap id={this.state.currStation} />
            }
            <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}>
              <TileLayer attribution='&amp;copy <a href="http://osm.org/copyright">OpenStreetMap</a> contributors' url="https://{s}.tile.osm.org/{z}/{x}/{y}.png" /> 
                  {
                      this.state.stations.map((value, key)=> {
                        if (value.Id<10) {
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
                        
                        return(
                              <Marker key={key} 
                                      position={[ value.Latitude+0.00001, value.Longtitude+0.0001]}
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

                                    <div className="address-extras-container center-content">
                                      Address Line: {value["First Address"]} <br></br>
                                      Tel: {value["Contact Telephone 1"]}
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
    );
  }
}

export default DeviceMap;