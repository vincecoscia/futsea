import React from 'react'


const Information = props => {
  if (!props.location.name) return null
  return (
    <div>
      <h2>{props.location.name}</h2>
      <p>{props.location.street}</p>
      <p>{props.location.city}, {props.location.state}</p>
      <Map
      props={props} />
    </div>
  )
}


export default Information



