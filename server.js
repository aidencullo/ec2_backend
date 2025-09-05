const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors()); // allows all origins
// or: app.use(cors({ origin: 'http://testwebsitebucket1324.s3-website.us-east-2.amazonaws.com' }));

app.get('/', (req, res) => res.send('Hello World!'));

app.listen(3000, () => console.log('Server running on port 3000'));
