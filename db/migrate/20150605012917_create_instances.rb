class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :login
      t.string :pw
      t.integer :account_id

      t.timestamps

    end
  end
end
