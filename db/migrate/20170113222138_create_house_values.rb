class CreateHouseValues < ActiveRecord::Migration[5.0]
  def change
    create_table :house_values do |t|
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
