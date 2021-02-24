import React from 'react';
import './Spot.css';
import MyNavbar from './MyNavbar';
import {getOneStation} from './api'; 

class Spot extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            spotId: this.props.id ? this.props.id : localStorage.getItem('spotId')
        }
    }

    render() {
        return(
            <div>
                SPOT: {this.state.spotId}
            </div>
        )
    }

}

export default Spot;
    