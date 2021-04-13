import { Request, Response } from 'express'
import { User } from '../models'

const index = async function(_req: Request, res: Response) {
  const users = await User.findAll()

  res.send(users)
}

export {
  index
}