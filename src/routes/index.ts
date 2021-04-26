/* eslint-disable @typescript-eslint/no-misused-promises */

import * as userController from '../controllers/userController'
import express from 'express'

const router = express.Router()

/* GET home page. */
router.get('/', userController.index)

export default router