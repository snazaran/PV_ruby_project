class CreateCaptures < ActiveRecord::Migration
  def change
    create_table :captures do |t|
      t.integer :year
      t.integer :month
      t.string :firm_name
      t.integer :captures
      t.integer :tiles

      t.timestamps

    end
  end
end
