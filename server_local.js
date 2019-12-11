const http = require("http");
const PORT = process.env.PORT || 9000;
http
  .createServer((req, res) => {
    console.log("New connection");
    res.end(
      "Hello Cloud Native Copenhagen v1 - ENV:<pre>" +
        JSON.stringify({ MYSECRET: process.env.MYSECRET }, null, 2)
    );
  })
  .listen(PORT, () => console.log("Listening on localhost:" + PORT));
