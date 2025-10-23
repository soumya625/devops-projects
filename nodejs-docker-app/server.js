const http = require('http');
const port = 3000;

const server = http.createServer((req, res) => {
  res.end(' Node.js app deployed in Docker container on AWS EC2!');
});

server.listen(port,() => console.log(Server running on port ${port}));
