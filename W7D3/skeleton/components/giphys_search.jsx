import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: '' };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  handleChange(e) {
    e.preventDefault();
    this.setState({searchTerm: e.target.value});
  }

  render() {
    let {giphys} = this.props;

    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input onChange={this.handleChange} value={this.state.searchTerm} />
          <button>Search</button>
        </form>

        <GiphysIndex searchTerm={this.state.searchTerm}/>
      </div>
    );
  }
}

export default GiphysSearch;
