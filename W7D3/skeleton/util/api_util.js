export const fetchSearchGiphys = (search_term) => {
  return $.ajax({
    method: 'GET',
    dataType: 'jsonp',
    url: `http://api.giphy.com/v1/gifs/search?q=${search_term}&api_key=GkY3CySVaoaydx5S7jMSlPpr7AyktutS&limit=2`
  })
}
window.fetchSearchGiphys = fetchSearchGiphys
