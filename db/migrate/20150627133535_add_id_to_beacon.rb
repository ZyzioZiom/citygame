class AddIdToBeacon < ActiveRecord::Migration
  def change
    add_column :beacons, :beacon_id, :string
  end
end
