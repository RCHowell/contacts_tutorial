const Express = require('express');
const RandomUser = require('randomuser');

const app = new Express();
const users = new RandomUser();

const capitalize = (word) => word[0].toUpperCase() + word.substr(1);

app.get('/:n', (req, res) => users.getUsers({
  results: req.params.n,
  nat: 'US',
}, (data) => {
  data.forEach((d) => {
    d.name.first = capitalize(d.name.first);
    d.name.last = capitalize(d.name.last); 
    d.location.city = capitalize(d.location.city);
    d.location.state = capitalize(d.location.state);
  });
  res.send(data);
}));

app.listen(3000, () => console.log('API Running'));

