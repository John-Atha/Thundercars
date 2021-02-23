import React from 'react';
import './Home.css';
import logo from './images/thundera.png';

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
            <div className="home-page-container">
                { this.state.userId!==null && (
                    <p className="test">User id: {this.state.userId}</p>
                )}
                { this.state.userId===null && (
                    <p className="test">User not logged in</p>
                )}
                { this.state.role!==null && (
                    <p className="test">Role: {this.state.role}</p>
                )}
                { this.state.role===null && (
                    <p className="test">User's role not specified</p>
                )}
            </div>
        )
    }


}

export default Home