class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :dest_name
      t.string :region
      t.string :country
      t.string :img_path

      t.timestamps
    end
  end
end
