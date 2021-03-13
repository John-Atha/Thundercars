import React from "react"
import "./MySpots.css";
import MyNavbar from './MyNavbar'; 
import { getStations, getOneSpot, isLogged } from "./api";
import UnAuthorized from './UnAuthorized';

class SpotsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            spotId: this.props.id,
            stationTitle: null,
            connType: null,
            level: null,
            currentType: null,   
        }
        this.attr1="Connection Type";
        this.attr2="Station Title"
        this.attr3="Current Type"
        this.spotPageRedirect = this.spotPageRedirect.bind(this);    
    }

    componentDidMount() {
        getOneSpot(this.props.id)
        .then(response => {
            console.log(response);
            this.setState({
                stationTitle: response.data[this.attr2],
                connType: response.data[this.attr1],
                level: response.data.Level,
                currentType: response.data[this.attr3]
            })
        })
        .catch(err => {
            console.log(err);
        })
    }

    spotPageRedirect = () => {
        let id=this.state.spotId;
        window.location.href=`/spots/${id}`;
    }

    render() {
        return(
            <div className="one-station-container center-content flex-item-medium-big box-colors">
                <h5 className="color2 center-content">Spot {this.state.spotId}: General Info</h5>
                <div className="small-spot-page-info-container">
                    <div className="station-info-title darker">Station's title: </div>
                    <div className="station-info darker">{this.state.stationTitle}</div>
                    <div className="station-info-title">Connection Type: </div>
                    <div className="station-info">{this.state.connType}</div>
                    <div className="station-info-title darker">Level: </div>
                    <div className="station-info darker">{this.state.level}</div>
                    <div className="station-info-title">Current Type: </div>
                    <div className="station-info">{this.state.currentType}</div>
                </div>
                <button className="more-details-button my-button center-content" onClick={this.spotPageRedirect}>More details / update</button>
            </div>

        )
    }
}

class MySpots extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            stationsList: [],
            spotsList: [],
            logged: false,
        }
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
                });
                let tempSpotsList = [];
                this.state.stationsList.forEach(element => {
                    element.Spots.forEach(spot => {
                        tempSpotsList.push(spot.Spot);
                    })
                });
                this.setState({
                    spotsList: tempSpotsList
                });
                console.log("Spots: ");
                console.log(this.state.spotsList);
            })
            .catch(err => {
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged: false,
            })
        })
    }

    render() {
        if (!this.state.userId || this.state.logged===false) {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to your spots listing feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to your spots listing feature"
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
                            My Spots
                        </div>
                        
                        {!this.state.spotsList.length && 
                            <div className="error-message margin-top-small center-content">No spots found,<br></br><br></br><a href="/addSpot">add one from here</a></div>
                        }

                        
                        <div className="flex-layout all-spots-container">
                            {   
                                this.state.spotsList.map((value, index) => {
                                    console.log(index);
                                    return (<SpotsDiv
                                        key={index}
                                        index={index+1}
                                        id={value}
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

export default MySpots;