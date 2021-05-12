class AddStatusToCallbacks < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE callback_status AS ENUM ('none', 'scheduled', 'canceled', 'finished', 'failed', 'dialing', 'canceled_by_manager');
    SQL

    add_column :callbacks, :status, :callback_status
  end

  def down
    remove_column :callbacks, :status

    execute <<-SQL
      DROP TYPE callback_status;
    SQL
  end
end
