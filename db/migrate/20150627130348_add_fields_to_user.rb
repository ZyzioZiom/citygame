class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :beacon_id, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :avatar_name, :string
    add_column :users, :avatar_description, :string
  end
end
