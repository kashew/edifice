import { DataTypes, Model, Optional, Sequelize } from 'sequelize'

// These are all the attributes in the User model
interface UserAttributes {
  id: number;
  firstName: string | null;
  lastName: string | null;
  email: string | null;
}

// Some attributes are optional in `User.build` and `User.create` calls
type UserCreationAttributes = Optional<UserAttributes, 'id'>

export class User extends Model<UserAttributes, UserCreationAttributes>
  implements UserAttributes {
  public id!: number // Note that the `null assertion` `!` is required in strict mode.
  public firstName!: string | null
  public lastName!: string | null // for nullable fields
  public email!: string | null

  // timestamps!
  public readonly createdAt!: Date
  public readonly updatedAt!: Date
}

export function initUser(sequelize: Sequelize): void {
  User.init(
    {
      id: {
        type: DataTypes.BIGINT,
        autoIncrement: true,
        primaryKey: true,
      },
      firstName: {
        type: new DataTypes.STRING(255),
        allowNull: true,
      },
      lastName: {
        type: new DataTypes.STRING(255),
        allowNull: true,
      },
      email: {
        type: new DataTypes.STRING(255),
        allowNull: true
      }
    },
    {
      tableName: 'users',
      sequelize, // passing the `sequelize` instance is required
    }
  )
}

export function associateUser(): void {
  // Here we associate which actually populates out pre-declared `association` static and other methods.
}