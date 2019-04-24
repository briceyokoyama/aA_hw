import React from 'react';

const GiphysIndexItem = ({gif}) => (
  <li>
    <img src={gif.embed_url} />
  </li>
)

export default GiphysIndexItem;