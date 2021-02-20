import React from 'react';
import './Home.css';
import logo from './images/thundera.png';

class Home extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            userId: null
        }
    }

    componentDidMount() {
        if (localStorage.getItem('userId')) {
            this.setState({
                userId: localStorage.getItem('userId') 
            })
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
            </div>
        )
    }


}

export default Home