import React from 'react'


const Filter = props => (
  <div>
    <label>Choose your City:</label>
    <select
      value={props.city}
      onChange={props.handleChange}
    >
      {
        props.allCities.map(city => (
          <option key={city} value={city}>
            {city}
          </option>
        ))
      }
    </select>
  </div>
)

export default Filter





