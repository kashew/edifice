import { Request, Response } from 'express'

const index = function(_req: Request, res: Response) {
  res.send("There's a snake in my boot!")
}

export {
  index
}