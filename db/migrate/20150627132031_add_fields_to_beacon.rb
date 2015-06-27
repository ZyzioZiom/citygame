class AddFieldsToBeacon < ActiveRecord::Migration
  def change
    add_column :beacons, :name, :string
    add_column :beacons, :description, :text
  end
end
