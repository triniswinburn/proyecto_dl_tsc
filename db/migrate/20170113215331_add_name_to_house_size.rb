class AddNameToHouseSize < ActiveRecord::Migration[5.0]
  def change
    add_column :house_sizes, :name, :string
  end
end
