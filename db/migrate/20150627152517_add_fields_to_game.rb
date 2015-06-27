class AddFieldsToGame < ActiveRecord::Migration
  def change
    add_column :games, :attacker_id, :integer
    add_column :games, :defender_id, :integer
    add_column :games, :attacker_time, :time
    add_column :games, :defender_time, :time
    add_column :games, :winner, :integer
  end
end
