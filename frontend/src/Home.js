import React from 'react';
import './Home.css';
import MyNavbar from './MyNavbar'; 
import DeviceMap from './DeviceMap';

class Home extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role')
        }
    }

    render() {
        return (
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">    
                    <DeviceMap/>
                </div>
            </div>
        )
    }


}

export default Home