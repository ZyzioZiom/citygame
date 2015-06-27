class AddTypesToBeacon < ActiveRecord::Migration
  def change
    rename_column :beacons, :user_id, :type_id
    add_column :beacons, :type, :string
  end
end
