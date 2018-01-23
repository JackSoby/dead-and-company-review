import React, { Component } from 'react';
import ShowTile from '../components/ShowTile'



class ShowContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      shows:[]

    }
  }
  componentDidMount(){
      let ShowParams=this.props.match.params.value
  fetch(`/api/v1/shows`,
      {method: 'POST', redirect: 'follow',
      credentials: "same-origin",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(ShowParams)
    })
    .then(response => response.json())
    .then(body => {
    this.setState({shows: body})
  })
}

  render(){
    let show = this.state.shows.map(show=>{
    return(
      <div>
        <ShowTile
          show={show}
        />
      </div>
    )
  })
  return(
    <div>{show}</div>
  )
  }
}


export default ShowContainer
