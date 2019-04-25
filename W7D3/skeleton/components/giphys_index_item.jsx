import React from 'react';

const GiphysIndexItem = ({gif}) => (
  <li>
    <img src={gif.images.fixed_height.url} />
  </li>
)

export default GiphysIndexItem;