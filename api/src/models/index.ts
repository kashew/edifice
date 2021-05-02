import { Options, Sequelize } from 'sequelize'
import { associateUser, initUser } from './user'
import { DatabaseConfig } from '../types'
import dbConfig from '../config/database.json'

const env = process.env.NODE_ENV || 'development'
const config: Options = (<DatabaseConfig>dbConfig)[env]
const sequelize = new Sequelize(config.database, config.username, config.password, config)

initUser(sequelize)

associateUser()

const User = sequelize.models.User

export {
  Sequelize,
  sequelize,
  User
}