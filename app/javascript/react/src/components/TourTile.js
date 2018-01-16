import React from 'react'



const TourTile = props =>{
  return(
    <div className='tour-container'>
    <div className='tour-image'></div>
      <div className='tour-tile'>{props.tour}</div>
    </div>
  )
}

 export default TourTile
