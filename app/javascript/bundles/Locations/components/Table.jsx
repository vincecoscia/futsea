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
            <tr id={location.id} key={location.id}>
              <td><a href={location.url}>{location.name}</a></td>
              <td>{location.city}</td>
            </tr>
          ))
        }
      </tbody>
    </table>
)

export default Table





