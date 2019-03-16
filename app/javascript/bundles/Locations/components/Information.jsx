import React from 'react'


const Information = props => {
  if (!props.location.name) return null
  return (
    <div>
      <img src='https://i.stack.imgur.com/dApg7.png' alt='map'></img>
      <h2>{props.location.name}</h2>
      <p>{props.location.street}</p>
      <p>{props.location.city}, {props.location.state}</p>
      <a href={`/locations/${props.location.id}/events?date=${props.location.today}`} className='btn btn-primary'>See Events</a>
    </div>
  )
}


export default Information



