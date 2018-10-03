class CreateDestinationGeos < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_geos do |t|
      t.integer :destination_id
      t.integer :geo_attribute_id

      t.timestamps
    end
  end
end
