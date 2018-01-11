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
    <div>
       <div className="top-bar">
          <nav>
            <NavLink className='home' to='/' key={`navbar-${1}`}>Dead and Company Review</NavLink>
            <span>
            </span>
          </nav>
       </div>
    </div>
    )
  }
}

export default NavBar
