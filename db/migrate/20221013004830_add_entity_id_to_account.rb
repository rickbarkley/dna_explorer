class AddEntityIdToAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :entity_id, :integer
  end
end
