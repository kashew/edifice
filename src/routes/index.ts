import express from 'express'
import * as userController from '../controllers/userController'

const router = express.Router()

/* GET home page. */
router.get('/', userController.index)

export default router