class RenameTypeInBeacon < ActiveRecord::Migration
  def change
    rename_column :beacons, :type, :beacon_type
  end
end
