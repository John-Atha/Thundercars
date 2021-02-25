import React from "react";
import "./MyNavbar.css";
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import NavDropdown from 'react-bootstrap/NavDropdown'

class MyNavbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userId: localStorage.getItem('userId'),
      role: localStorage.getItem('role')
    }
  }

  logout = () => {
    localStorage.removeItem('userId');
    localStorage.removeItem('role');
    window.location.href="/";
  }



  //      <Nav.Link id="nav-link" href="/myStatistics">My statisdgsstics</Nav.Link>

  render() {
    return (
      <Navbar className="color-nav">
        <Nav className="mr-auto">
          <Nav.Link id="nav-link" href="/home">Home</Nav.Link>

          {this.state.role==="StationOwner" && (
          <NavDropdown title="My statistics" id="nav-link">
            <NavDropdown.Item href="/myStationStatistics">Sessions per Station</NavDropdown.Item>
            <NavDropdown.Item href="/StationOwnerStatistics">Monthly</NavDropdown.Item>
          </NavDropdown>
          )}
          {this.state.role==="VehicleOwner" && (
          <NavDropdown title="My statistics" id="nav-link">
            <NavDropdown.Item href="/UserMyStatistics">General</NavDropdown.Item>
            <NavDropdown.Item href="/UserVehicleStatistics">Per vehicle</NavDropdown.Item>
          </NavDropdown>
          )}

          {this.state.role==="StationOwner" && (
            <Nav.Link id="nav-link" href="/myStations">My stations</Nav.Link>
          )}

          {this.state.role==="StationOwner" && (
            <Nav.Link id="nav-link" href="/mySpots">My spots</Nav.Link>
          )}

          {this.state.role==="VehicleOwner" && (
            <Nav.Link id="nav-link" href="/myVehicles">My vehicles</Nav.Link>
          )}

          {this.state.role==="StationOwner" && (
            <Nav.Link id="nav-link" href="/MySpotsDetailedSessions">Detailed Sessions</Nav.Link>
          )}

          {this.state.role==="VehicleOwner" && (
            <Nav.Link id="nav-link" href="#">Detailed Sessions</Nav.Link>
          )}

          {!this.state.userId && (
            <Nav.Link id="nav-link" href="/">Login</Nav.Link>
          )}
          {!this.state.userId && (
            <Nav.Link id="nav-link" href="/register">Register</Nav.Link>
          )}
          {this.state.userId && (
            <Nav.Link id="nav-link" onClick={this.logout}>Logout</Nav.Link>
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