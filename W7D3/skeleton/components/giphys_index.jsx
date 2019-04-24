import React from 'react';

import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = ({gifs}) => {
  return (
    <ul>
    { gifs.map(gif => <GiphysIndexItem gif={gif}/>) }
    </ul>
)};

export default GiphysIndex;