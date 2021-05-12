class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.uuid :uuid
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_extension

      t.timestamps
    end
  end
end
