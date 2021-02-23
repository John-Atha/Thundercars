import React from "react"
import "./MyStations.css";
import logo from './images/thundera.png';
import MyNavbar from './MyNavbar'; 
import {getStations} from './api';


class StationsDiv extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            id: this.props.id,
            title: this.props.title,
            currentProvName: this.props.currentProvName,
            operator: this.props.operator,
            rating: this.props.rating,
            town: this.props.town,
            firstAddress: this.props.firstAddress            
        }
    }

    stationPageRedirect = () => {
        let id=this.state.id;
        window.location.href=`/stations/${id}`;
        localStorage.removeItem('stationId');
    }

    render() {
        return (
            <div className="one-station-container center-content">
                <h5 className="one-station-subtitle">Station {this.state.index}</h5>
                <div className="station-info-container">
                    <div className="station-info-title">Title: </div>
                    <div className="station-info">{this.state.title}</div>
                    <div className="station-info-title">Current Provider: </div>
                    <div className="station-info">{this.state.currentProvName}</div>
                    <div className="station-info-title">Rating: </div>
                    <div className="station-info">{this.state.rating}</div>
                    <div className="station-info-title">Town: </div>
                    <div className="station-info">{this.state.town}</div>
                    <div className="station-info-title">First Address: </div>
                    <div className="station-info">{this.state.firstAddress}</div>
                </div>
                <a className="station-details-link" onClick={this.stationPageRedirect}>For details click here</a>
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
            stationsList: []
        }
        this.attr1Name="Current Provider's Name";
        this.attr2Name="First Address";

    }
    
    componentDidMount() {
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
                        <div className="specific-title">
                            My Stations
                        </div>
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