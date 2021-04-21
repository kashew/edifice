import SDC from 'statsd-client'
import express from 'express'
import indexRouter from './routes'

const app = express()
const port = 3000
const statsd = new SDC({ host: 'graphite-statsd', port: 8125, prefix: 'edifice' })

app.use('/', indexRouter)
app.use(statsd.helpers.getExpressMiddleware('edifice', { timeByUrl: true }))

app
  .listen(port, () => {
    return console.log(`server is listening on ${port}`)
  })
  .on('error', (e) => {
    console.error(e)
  })