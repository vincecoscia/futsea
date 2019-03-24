import React, { Component } from 'react';
import axios from 'axios'

export default class Search extends Component {
  state = { term: '', results: []}

  handleChange = event => {
    const term = event.target.value
    axios.get(`/search.json?term=${term}`)
      .then((response) => {
        this.setState({ term, results: response.data });
        console.log(results)
      })
      .catch((error) => {
        console.log(error.response);
      })
  }

  render() {
    const { results, term } = this.state;
    return (
      <div className="header-container" id="searchbar">
        <label htmlFor="term">
          <h3>Search Locations</h3>
        </label>
        <input
          type="search"
          name="term"
          value={term}
          onChange={this.handleChange}
          autoComplete="off"
          className="form-control col-5 stickyicky"
          placeholder="search by name, city, or zipcode"
        />
        <div id="locations-all" class="btn btn-primary">
          <a href="./locations" id="location-all">
            All Locations
          </a>
        </div>
        {results.length > 0 && term.length > 0 && (
          <div className="suggestions">
            {results.map((result, i) => {
              return (
                <p key={i} className="animated fadeIn">
                  <a
                    id="suggestion"
                    href={`/locations/${result.id}/events?date=${
                      result.today
                    }`}
                  >
                    {result.name} - {result.city}
                  </a>
                </p>
              );
            })}
          </div>
        )}
      </div>
    );
  }
}
