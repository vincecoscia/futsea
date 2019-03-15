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
      <div>
        <label htmlFor="term">
          <h3>Find Location:</h3>
        </label>
        <input
          type="search"
          name="term"
          value={term}
          onChange={this.handleChange}
          autoComplete="off"
          className="form-control col-5"
        />
        {results.length > 0 && term.length > 0 && (
          <div>
            {results.map((result, i) => {
              return (
                <p key={i}>
                  <a href={`/locations/${result.id}/events`}>{result.name} - {result.city}</a>
                </p>
              );
            })}
          </div>
        )}
      </div>
    );
  }
}