class CreateLangAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :lang_attributes do |t|
      t.string :language

      t.timestamps
    end
  end
end
