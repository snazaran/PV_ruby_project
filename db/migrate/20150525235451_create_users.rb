class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :login
      t.text :password
      t.integer :account_id

      t.timestamps

    end
  end
end
