import React from 'react'

const Table = props => (
  <div width="540px">
  <table className="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>City</th>
          <th>Neighborhood</th>
        </tr>
      </thead>
        <tbody>
        {
          props.locations.map(location => (
              <tr id={location.id}
                  key={location.id}
                  value={location}
                  onClick={e=> props.switchLocation(e,location)}
                  style={{cursor: 'pointer'}}
                  className="tr-hover" >
                <td>{location.name}</td>
                <td>{location.city}</td>
                <td>{location.neighborhood}</td>
            </tr>
          ))
        }
      </tbody>
    </table>
  </div>
)

export default Table





