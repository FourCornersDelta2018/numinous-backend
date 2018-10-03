class CreateGeoAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :geo_attributes do |t|
      t.string :geography

      t.timestamps
    end
  end
end
