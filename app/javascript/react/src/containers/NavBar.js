import React, { Component } from 'react';
import { NavLink } from 'react-router-dom'
import 'whatwg-fetch'

class NavBar extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }


  render() {
    return(
    <div className='nav-container'>
       <div className="top-bar">
          <nav>
            <NavLink className='home' to='/' key={`navbar-${1}`}>Home</NavLink>
            <span>
            </span>
          </nav>
       </div>
    </div>
    )
  }
}

export default NavBar
