class ChangeUidNameinBeacon < ActiveRecord::Migration
  def change
    rename_column :beacons, :uid, :unique_id
  end
end
