import express from 'express'

const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send("There's a snake in my boot!")
})

app
  .listen(port, () => {
    return console.log(`server is listening on ${port}`)
  })
  .on('error', (e) => {
    console.error(e)
  })