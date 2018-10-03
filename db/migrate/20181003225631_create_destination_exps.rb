class CreateDestinationExps < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_exps do |t|
      t.integer :destination_id
      t.integer :exp_attribute_id

      t.timestamps
    end
  end
end
