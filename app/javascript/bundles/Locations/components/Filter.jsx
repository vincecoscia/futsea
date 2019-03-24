import React from 'react'


const Filter = props => (
  <div>
    <label>Choose your City:</label>
    <select
      onChange={props.handleChange}
      className="form-control col-4"
      id="form-control-normal-font"
      defaultValue=''
    >
      <option value="">Select a City</option>
      {
        props.cities.map(city => (
          <option key={city} value={city} >
            {city}
          </option>
        ))
      }
    </select>
  </div>
)

export default Filter





