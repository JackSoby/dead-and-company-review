import React, { Component } from 'react';
import TourTile from '../components/TourTile'


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
    return(
      <div>
      <TourTile
      tour={tour.name}
      />
      </div>
    )
  })
  return(
    <div>{tour}</div>
  )
  }
}


export default Home
