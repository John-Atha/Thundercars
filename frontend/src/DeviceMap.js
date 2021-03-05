import React, { Component } from "react";
import ReactDOM from "react-dom";
import Rating from "react-rating";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "./DeviceMap.css";
import logo from './images/thundera.png';
import {getOneStation , getAllStations} from './api';
import Station from './Station';
import MyNavBar from './MyNavbar';
import StationMap from './StationMap';

class SpecStation extends React.Component {
    
  constructor(props) {
      super(props);
      this.state = {
          key: this.props.key,
          stationId: this.props.stationId,
          title: this.props.title,
          longtitude: this.props.longtitude,
          index: this.props.index,
          latitude: this.props.latitude,
          rating: this.props.rating,
          costperkw: this.props.costperkw
      }
      this.attr2 = "Cost Per kWh";
      this.showstation=this.showstation.bind(this);
      this.currenstation1=null;
  }
  showstation=()=>{
    console.log('Go to station link')
    window.location.href=`/stations/${this.state.stationId}`
  }

  render() {
    const popupContent = {
      textAlign: "center",
      marginTop: "30px",
      backgroundcolor: "red"
    };
    const popupHead = {
      fontWeight: "bold",
      fontSize: "22px"
    };
    
    const popupText = {
      fontSize: "40px",
      marginBottom: "20px"
    };
    
    const okText = {
      textAlign: "center",
      fontSize: "30px"
    };
      return ( 
        <Marker position={[ this.props.latitude+0.00001, this.props.longtitude+0.0001]} >
          <Popup className="request-popup">
            <div style={popupContent}>
              <a className="popupHead" onClick={this.showstation}>
              {this.props.title}
              </a>
              <br></br>
              Cost Per kWh:
              <br></br>
              <span style={popupText}>
              {this.props.costperkw}€
              </span>
              </div>
              <div style={okText}>
              Rating:
              </div>
            <Rating initialRating={this.props.rating} readonly={true} fullSymbol={<img className="logorating" src={logo} alt="Thundercars-logo"/>}></Rating>
          </Popup>
        </Marker>
      );

  }

}

class DeviceMap extends React.Component {
  constructor(props){
      super(props);
      this.state={
          error: null,
          stations: []
      }
      this.attr2 = "Cost Per kWh";
  }    

  componentDidMount () {
      getAllStations()
      .then(response => {
          console.log(response);
          this.setState({
              stations: response.data["StationsList"]
          })
          console.log(this.state.vehicles);
      })
      .catch(err => {
          console.log(err);
          this.setState({
              error: "You don't own any vehicles"
          })
      })
  }

  render() {
          return (
              <div>
                <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
              integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
              crossorigin=""/>
                  <MapContainer center={[0, 0]} zoom={3} scrollWheelZoom={false}>
                    <TileLayer
                      attribution='&amp;copy <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
                      url="https://{s}.tile.osm.org/{z}/{x}/{y}.png"
                    /> 
                        {
                            this.state.stations.map((value, key, index)=> {
                                console.log(value+": "+key);
                                return(<SpecStation
                                    key={key}
                                    index={key+1}
                                    stationId={value.Id}
                                    longtitude={value.Longtitude} 
                                    latitude={value.Latitude}
                                    title={value.Title}
                                    rating={value.Rating}
                                    costperkw={value[this.attr2]}
                                />)
                      
                            })
                        }          
                        
                  </MapContainer>
              {this.state.currentstation && 
                <StationMap id={this.state.currentstation}/>
              }
            </div>
          );
              }
}

export default DeviceMap;