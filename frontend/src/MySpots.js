import React from "react"
import "./MySpots.css";
import MyNavbar from './MyNavbar'; 
import { getStations, getOneSpot } from "./api";

class SpotsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            spotId: this.props.id,
            stationTitle: null,   
        }
    }

    render() {
        return(
            <div>
                lalalal
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
            spotsList: []
        }
    }

    componentDidMount() {
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
    }

    render() {
        if (!this.state.userId || this.state.role!=="StationOwner") {
            window.location.href="/";
        }
        else {
            return (
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title orangeColor">
                            My Stations
                        </div>
                        <div id="spots-container">
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