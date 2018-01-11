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
  fetch(`/api/v1/setlists`,
      {method: 'GET', redirect: 'follow',
      credentials: "same-origin",
      headers: {"Content-Type": "application/json"}})
    .then(response => response.json())
    .then(body => {
    this.setState({tours: body})
})
}

  render(){
    return(
      <div>this is home</div>
    )
  }
}


export default Home
