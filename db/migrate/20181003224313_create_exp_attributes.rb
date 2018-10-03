class CreateExpAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :exp_attributes do |t|
      t.string :experience

      t.timestamps
    end
  end
end
