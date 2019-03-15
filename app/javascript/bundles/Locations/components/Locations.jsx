import React, { Component } from 'react'
import axios from 'axios'
import Table from './Table'
import Filter from './Filter'
import Information from './Information'
 
class Locations extends Component {
  state = {
            cities: [],
            locations:  [],
            city: '',
            location: {},
          }

  fetchLocations = (city) => {
    axios.get(`/locations.json?city=${city}`)
      .then(response => {
        const { locations } = response.data
        console.log({locations, city})
        this.setState({ locations, city })
      })
  }

  handleChange = event => {
    const city = event.target.value
    this.fetchLocations(city)
  }



  switchLocation = (e,location) => {
    e.preventDefault()
    this.setState({ location: location})
    console.log(location)
    console.log(this.state.location)
  }

  render(){
    const { locations, city, cities, location } = this.state
    return(
      <div className='locations-grid'>
        <div className='locations-grid-item'>
          <Filter
            city={city}
            locations={locations}
            handleChange={this.handleChange}
            cities={cities}
          />
          <h1>Locations</h1>
          <Table
            locations={locations}
            city={city}
            location={location}
            switchLocation={this.switchLocation}
          />
        </div>
        <div className="locations-grid-item">
          <Information
            location={location} />
        </div>
      </div>
    )
  }

  componentDidMount(){
    const { city } = this.state
    axios.get('/cities').then(response => this.setState({cities: response.data}) )
    this.fetchLocations(city)
  }
}

export default Locations