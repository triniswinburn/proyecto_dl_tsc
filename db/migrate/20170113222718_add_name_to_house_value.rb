class AddNameToHouseValue < ActiveRecord::Migration[5.0]
  def change
    add_column :house_values, :name, :string
  end
end
