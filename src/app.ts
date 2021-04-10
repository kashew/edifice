import express from 'express'
import indexRouter from './routes'

const app = express()
const port = 3000

app.use('/', indexRouter);

app
  .listen(port, () => {
    return console.log(`server is listening on ${port}`)
  })
  .on('error', (e) => {
    console.error(e)
  })