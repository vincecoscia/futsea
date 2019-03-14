import React, { Component } from 'react'
import axios from 'axios'
import Table from './Table'
import Filter from './Filter'
 
class Locations extends Component {
  state = {
            allCities: [],
            locations:  [],
            city: '',
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

  render(){
    const { locations, city, allCities } = this.state
    return(
      <div>
        <Filter
          city={city}
          locations={locations}
          handleChange={this.handleChange}
          allCities={allCities}
        />
        <h1>Locations</h1>
        <Table
          locations={locations}
          city={city}
         />
      </div>
    )
  }

  componentDidMount(){
    const { city } = this.state
    axios.get('/cities').then(response => this.setState({allCities: response.data}) )
    this.fetchLocations(city)
  }
}

export default Locations