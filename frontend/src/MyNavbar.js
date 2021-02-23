import React from "react";
import "./MyNavbar.css";
import logo from './images/thundera.png';
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';

class MyNavbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userId: localStorage.getItem('userId'),
      role: localStorage.getItem('role')
    }
  }
  
  render() {
    return (
      <Navbar className="color-nav">
        <Nav className="mr-auto">
          <Nav.Link id="nav-link" href="/home">Home</Nav.Link>
          {this.state.role==="VehicleOwner" && (
            <Nav.Link id="nav-link" href="/myVehicles">My vehicles</Nav.Link>
          )}
          <Nav.Link id="nav-link" href="/myStatistics">My statistics</Nav.Link>
          {this.state.role=="StationOwner" && (
            <Nav.Link id="nav-link" href="#">My stations</Nav.Link>
          )}
          <Nav.Link id="nav-link" href="#">Detailed Sessions</Nav.Link>
          {!this.state.userId && (
            <Nav.Link id="nav-link" href="/">Login</Nav.Link>
          )}
          {!this.state.userId && (
            <Nav.Link id="nav-link" href="/register">Register</Nav.Link>
          )}
          {this.state.userId && (
            <Nav.Link id="nav-link" href="#">Logout</Nav.Link>
          )}
        </Nav>
      </Navbar>
      


    )
  }






  /*render() { 
    return(
        <nav className="navbar">
          <div className="navbar--logo-holder">
            <img src={logo} alt="logo" className="navbar--logo" />
            <h1> Stick'Me</h1>
          </div>
            <li>Home</li>
            <li>About</li>
            <li>Blog</li>
            <li></li>
        </nav>
    )
  }*/
}
export default MyNavbar