import React from 'react'



const ShowTile = props =>{

  return(
    <div className='tour-container'>
      <div className='tour-image'></div>
      <div className='tour-tile'>{props.show}</div>
    </div>
  )
}

 export default ShowTile
