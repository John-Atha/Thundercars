import React from "react";
import "./MyNavbar.css";
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import NavDropdown from 'react-bootstrap/NavDropdown'
import icon from './images/user-icon.png';
import {logoutPost, isLogged} from './api';

class MyNavbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userId: localStorage.getItem('userId'),
      role: localStorage.getItem('role'),
      logged: false,
    }
    this.logout = this.logout.bind(this);
  }

  logout = () => {
    logoutPost()
    .then(response => {
        console.log(response);
        localStorage.removeItem('userId');
        localStorage.removeItem('role');
        localStorage.removeItem('token');  
        window.location.href="/";
      }
    )
    .catch(err => {
      console.log(err);
      localStorage.removeItem('userId');
      localStorage.removeItem('role');
      localStorage.removeItem('token');
      window.location.href="/";
    })
  }

  componentDidMount() {
    isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
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
    return (
      <Navbar className="color-nav">
        <Nav className="mr-auto">
          <Nav.Link id="nav-link" href="/">Home</Nav.Link>

          { this.state.logged && this.state.role==="StationOwner" && (
          <NavDropdown title="My statistics" id="nav-link">
            <NavDropdown.Item href="/myStationStatistics">Sessions per Station</NavDropdown.Item>
            <NavDropdown.Item href="/StationsMonthlyStatistics">Monthly</NavDropdown.Item>
          </NavDropdown>
          )}
          { this.state.logged && this.state.role==="VehicleOwner" && (
          <NavDropdown title="My statistics" id="nav-link">
            <NavDropdown.Item href="/UserMyStatistics">General</NavDropdown.Item>
            <NavDropdown.Item href="/UserVehicleStatistics">Per vehicle</NavDropdown.Item>
          </NavDropdown>
          )}

          { this.state.logged && this.state.role==="StationOwner" && (
            <NavDropdown title="Stations" id="nav-link">
              <NavDropdown.Item href="/myStations">My stations</NavDropdown.Item>
              <NavDropdown.Item href="/addStation">Add new station</NavDropdown.Item>
            </NavDropdown>
          )}

          {this.state.logged && this.state.role==="StationOwner" && (
            <NavDropdown title="Spots" id="nav-link">
              <NavDropdown.Item href="/mySpots">My spots</NavDropdown.Item>
              <NavDropdown.Item href="/addSpot">Add new spot</NavDropdown.Item>
            </NavDropdown>
          )}


          {this.state.logged && this.state.role==="VehicleOwner" && (
              <NavDropdown title="Vehicles" id="nav-link">
                <NavDropdown.Item href="/myVehicles">My vehicles</NavDropdown.Item>
                <NavDropdown.Item href="/addVehicle">Add vehicle</NavDropdown.Item>
              </NavDropdown>
          )}

          {this.state.logged && this.state.role==="StationOwner" && (
            <Nav.Link id="nav-link" href="/MySpotsDetailedSessions">Detailed Sessions</Nav.Link>
          )}

          {this.state.logged && this.state.role==="VehicleOwner" && (
            <Nav.Link id="nav-link" href="/VehiclesDetailedSessions">Detailed Sessions</Nav.Link>
          )}
          {!this.state.logged && (
            <Nav.Link id="nav-link" href="/login">Login</Nav.Link>
          )}
          {!this.state.logged && (
            <Nav.Link id="nav-link" href="/register">Register</Nav.Link>
          )}
          {this.state.logged && (
            <NavDropdown title={<img className="user-icon user-choices" src={icon} alt="user icon"/>} id="nav-link">
              <NavDropdown.Item className="user-choices2" href="/profile">My profile</NavDropdown.Item>
              <NavDropdown.Item className="user-choices" onClick={this.logout}>Logout</NavDropdown.Item>
            </NavDropdown>
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