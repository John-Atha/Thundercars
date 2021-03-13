import React from "react"
import "./MyStations.css";
import MyNavbar from './MyNavbar'; 
import {getStations, isLogged} from './api';
import UnAuthorized from './UnAuthorized';

class StationsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key:         this.props.key,
            index:       this.props.index,
            id:          this.props.id,
            title: this.props.title,
            currentProvName:     this.props.currentProvName ? (this.props.currentProvName.length===0 ? "-" : this.props.currentProvName) : "-", 
            operator:            this.props.operator        ? (this.props.operator.length===0        ? "-" : this.props.operator       ) : "-", 
            rating:              this.props.rating          ? (this.props.rating.length===0          ? "-" : this.props.rating         ) : "-", 
            town:                this.props.town            ? (this.props.town.length===0            ? "-" : this.props.town           ) : "-",
            firstAddress:        this.props.firstAddress    ? (this.props.firstAddress.length===0    ? "-" : this.props.firstAddress   ) : "-"             
        }
        this.stationPageRedirect = this.stationPageRedirect.bind(this);    
    }

    stationPageRedirect = () => {
        let id=this.state.id;
        window.location.href=`/stations/${id}`;
    }

    render() {
        return (
            <div className="one-station-container center-content box-colors margin-top-small">
                <h5 className="color2 center-content">Station {this.state.id}: General Info</h5>
                <div className="station-page-info-container">
                    <div className="station-info-title darker">Title: </div>
                    <div className="station-info darker">{this.state.title}</div>
                    <div className="station-info-title">Current Provider: </div>
                    <div className="station-info">{this.state.currentProvName}</div>
                    <div className="station-info-title darker">Rating: </div>
                    <div className="station-info darker">{this.state.rating}</div>
                    <div className="station-info-title">Town: </div>
                    <div className="station-info">{this.state.town}</div>
                    <div className="station-info-title darker">First Address: </div>
                    <div className="station-info darker">{this.state.firstAddress}</div>
                </div>
                <button className="my-button more-details-button center-content" onClick={this.stationPageRedirect}>More details / update</button>
            </div>
        )
    }

}


class MyStations extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            logged: false,
            stationsList: [],
        }
        this.attr1Name="Current Provider's Name";
        this.attr2Name="First Address";

    }
    
    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
            getStations(this.state.userId)
            .then( response => {
                console.log(response);
                this.setState({
                    stationsList: response.data.StationsList
                })
            })
            .catch(err => {
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged:false,
            })
        })
    }

    render() {
        if (!this.state.userId || this.state.logged===false) {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to your stations listing feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to your stations listing feature"
                    linkMessage="Log out and create an account as a station owner"
                    link="/register"
                    link2Message="See your vehicles listing"
                    link2="/MyVehicles" 
                />
            )
        }
        else {
            return (
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="specific-title orangeColor">
                            My Stations
                        </div>
                        
                        {!this.state.stationsList.length && 
                            <div className="error-message margin-top-small center-content">No stations found,<br></br><br></br><a href="/addStation">add one from here</a></div>
                        }

                        <div id="stations-container">
                            {   
                                this.state.stationsList.map((value, index) => {
                                    console.log(index);
                                    return (<StationsDiv
                                        key={index}
                                        index={index+1}
                                        id={value.Id}
                                        title={value.Title}
                                        currentProvName={value[this.attr1Name]}
                                        operator={value.Operator}
                                        rating={value.Rating}
                                        town={value.Town}
                                        firstAddress={value[this.attr2Name]}
                                        /> )
                                })
                            }
                        </div>
                    </div>
                </div>
            )
        }
    }

}

export default MyStations