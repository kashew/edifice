class CreateCallbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :callbacks do |t|
      t.uuid :uuid
      t.string :phone_number
      t.timestamp :canceled_on
      t.timestamp :callback_on
      t.timestamp :notify_on
      t.references :caller, polymorphic: true

      t.timestamps
    end
  end
end
