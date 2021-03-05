import React from 'react';
import './Developers.css';
import MyNavbar from './MyNavbar';
import logo from './images/thundera.png';
import UnAuthorized from './UnAuthorized';

class Developers extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            apiKey: null,
        }
        this.generate = this.generate.bind(this);
    }

    generate = () => {


    }

    componentDidMount() {


    }

    render() {
        if (!this.state.userId) {
            return(
                <UnAuthorized 
                message="You need to create an account to have access to our api by getting your personal api key"
                linkMessage="Create an account"
                link="/register" 
            />
            )
        }
        else {
            return(
                <div>
                    test
                </div>
            )
        }

    }

}

export default Developers;
