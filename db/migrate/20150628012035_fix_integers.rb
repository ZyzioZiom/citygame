class FixIntegers < ActiveRecord::Migration
  def change
    change_column :games, :attacker_time, 'integer USING CAST(attacker_time AS integer)'
    change_column :games, :defender_time, 'integer USING CAST(defender_time AS integer)'
  end
end
