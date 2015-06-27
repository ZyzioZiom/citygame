class IdFieldsForBeacon < ActiveRecord::Migration
  def change
    add_column :beacons, :beacon_id2, :integer
    add_column :beacons, :beacon_id3, :integer
    add_column :beacons, :beacon_mac, :string
    remove_column :beacons, :beacon_id
    add_column :beacons, :beacon_id1, :string
  end
end
