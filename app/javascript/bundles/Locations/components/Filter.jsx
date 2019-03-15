import React from 'react'


const Filter = props => (
  <div>
    <label>Choose your City:</label>
    <select

      onChange={props.handleChange}
      className="form-control"
      defaultValue=''
    >
      {
        props.cities.map(city => (
          <option key={city} value={city} >
            {city}, {state}
          </option>
        ))
      }
    </select>
  </div>
)

export default Filter





