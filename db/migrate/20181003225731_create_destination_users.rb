class CreateDestinationUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_users do |t|
      t.integer :destination_id
      t.integer :user_id

      t.timestamps
    end
  end
end
