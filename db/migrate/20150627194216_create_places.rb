class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :beacon_id
      t.text :offer_description
      t.string :offer_url
      t.timestamps null: false
    end
  end
end
