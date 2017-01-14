class CreateHouseBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :house_builds do |t|
      t.string :name

      t.timestamps
    end
  end
end
