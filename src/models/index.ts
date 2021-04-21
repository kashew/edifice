import { associateUser, initUser } from './user'
import { Sequelize } from 'sequelize'
import databaseConfig from '../config/database.json'

const env = process.env.NODE_ENV || 'development'
const config = databaseConfig[env]
const sequelize = new Sequelize(config.database, config.username, config.password, config)

initUser(sequelize)

associateUser()

const User = sequelize.models.User

export {
  Sequelize,
  sequelize,
  User
}