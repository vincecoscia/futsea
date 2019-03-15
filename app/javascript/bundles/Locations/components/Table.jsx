import React from 'react'

const Table = props => (
  <table className="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>City</th>
        </tr>
      </thead>
        <tbody>
        {
          props.locations.map(location => (
              <tr id={location.id}
                  key={location.id}
                  value={location}
                  onClick={e=> props.switchLocation(e,location)}>
              <td>{location.name}</td>
              <td>{location.city}</td>
            </tr>
          ))
        }
      </tbody>
    </table>
)

export default Table





