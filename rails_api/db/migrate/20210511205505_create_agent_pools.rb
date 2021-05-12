class CreateAgentPools < ActiveRecord::Migration[6.1]
  def change
    create_table :agent_pools do |t|
      t.uuid :uuid

      t.timestamps
    end
  end
end
