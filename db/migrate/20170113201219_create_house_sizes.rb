class CreateHouseSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :house_sizes do |t|
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
