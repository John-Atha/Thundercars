import React from "react"
import "./Navbar.css"
import logo from './images/thundera.png'

class Navbar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() { 
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
  }
}
export default Navbar