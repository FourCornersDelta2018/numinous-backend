class CreateDestinationLangs < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_langs do |t|
      t.integer :destination_id
      t.integer :lang_attribute_id

      t.timestamps
    end
  end
end
