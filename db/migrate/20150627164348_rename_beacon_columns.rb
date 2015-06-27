class RenameBeaconColumns < ActiveRecord::Migration
  def change
    rename_column :beacons, :beacon_id1, :proximity_uid
    rename_column :beacons, :beacon_id2, :major
    rename_column :beacons, :beacon_id3, :minor
    add_column :beacons, :uid, :string
  end
end
