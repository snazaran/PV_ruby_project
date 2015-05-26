class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :firm_name
      t.string :city
      t.integer :monthly_rate
      t.integer :salesperson_id

      t.timestamps

    end
  end
end
