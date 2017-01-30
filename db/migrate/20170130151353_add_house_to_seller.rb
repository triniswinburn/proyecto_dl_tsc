class AddHouseToSeller < ActiveRecord::Migration[5.0]
  def change
    add_column :sellers, :house, :integer
  end
end
