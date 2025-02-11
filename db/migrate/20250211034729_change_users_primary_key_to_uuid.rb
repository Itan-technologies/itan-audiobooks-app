class ChangeUsersPrimaryKeyToUuid < ActiveRecord::Migration[8.0]
  def change
    # Remove the existing primary key
    remove_column :users, :id

    # Add the new UUID primary key
    add_column :users, :id, :uuid, default: 'gen_random_uuid()', null: false, primary_key: true
  end
end
