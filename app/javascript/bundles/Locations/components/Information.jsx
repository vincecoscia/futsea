import React from 'react'

const Information = props => (
  <div>
    <h2>{props.location.name}</h2>
    <p>{props.location.street}</p>
    <p>{props.location.city}, {props.location.state}</p>
  </div>
)

export default Information





