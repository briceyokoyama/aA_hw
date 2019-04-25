import React from 'react';
import GiphysIndex from './giphys_index';

class giphysSearch extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      search: "nothing"
    }
    this.updateSearch = this.updateSearch.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchSearchGiphys('nothing');
  }

  updateSearch(e) {
    this.setState({
      search: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.search.split(' ').join('+'));
    this.setState({search: ""});
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <label >
            <input type="text" value={this.state.search} onChange={this.updateSearch}/>
          </label>
          <input type="submit" value="Search for GIF"/>
        </form>
        <div>
          <GiphysIndex gifs={this.props.giphys}/>
        </div>
      </div>
    )
  }
}

export default giphysSearch;