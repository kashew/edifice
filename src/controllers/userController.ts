import { Request, Response } from 'express'
import { User } from '../models'
import logger from '../utils/logger'

const index = async function(_req: Request, res: Response): Promise<void> {
  const users = await User.findAll()
  logger.info(users)

  res.send(users)
}

export {
  index
}