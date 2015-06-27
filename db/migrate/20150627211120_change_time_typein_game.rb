class ChangeTimeTypeinGame < ActiveRecord::Migration
  def change
    remove_column :games, :attacker_time
    remove_column :games, :defender_time
    
    add_column :games, :attacker_time, :integer
    add_column :games, :defender_time, :integer
    
  end
end
