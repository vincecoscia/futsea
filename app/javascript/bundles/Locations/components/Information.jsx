import React from 'react'

const Information = props => {
  if (!props.location.name) return null
  return (
  <React.Fragment>
    <div className='location-info'>
        <a href={props.location.url}><h2 className="h2-hover">{props.location.name}</h2></a>
      <div className='flex-display flex-display-down'>
        <div>
          <p>{props.location.street}</p>
          <p>{props.location.city}, {props.location.state}</p>
        </div>
        <div>
          <a href={`/locations/${props.location.id}/events?date=${props.location.today}`} className='btn btn-primary'>See Events</a>
        </div>
      </div>
    </div>
    <div>
      {/* <img className='map'src='https://i.ibb.co/dDPnYmq/map.png' style={{width: '600px'}} alt='map'></img> */}
      <div className='content'>
        <div className='thumbnail'>
          <img className='portrait' src={props.location.img} alt='img1'></img>
        </div>
        <div className='thumbnail'>
          <img className='portrait' src={props.location.img2} alt='img2'></img>
        </div>
        <div className='thumbnail'>
          <img className='portrait' src={props.location.img3} alt='img3'></img>
        </div>
      </div>
    </div>

  </React.Fragment>
  )
}


export default Information



