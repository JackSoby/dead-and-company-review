import React, { Component } from 'react';
import TourTile from '../components/TourTile'
import { Link } from 'react-router-dom'
import ShowContainer from './ShowContainer'


class Home extends Component {
  constructor(props){
    super(props)
    this.state = {
      tours:[]

    }
  }
  componentDidMount(){
  fetch(`/api/v1/tours`,
      {method: 'GET', redirect: 'follow',
      credentials: "same-origin",
      headers: {"Content-Type": "application/json"}})
    .then(response => response.json())
    .then(body => {
    this.setState({tours: body})
  })
}

  render(){

    let tour = this.state.tours.map(tour=>{
    let value = tour.name
    let link = `/shows/:${value}`
    return(
      <div>
      <Link to={link} >
        <TourTile
            tour={tour.name}
          />
        </Link>
      </div>
    )
  })
    return(
      <div>{tour}</div>
    )
  }
}


export default Home
