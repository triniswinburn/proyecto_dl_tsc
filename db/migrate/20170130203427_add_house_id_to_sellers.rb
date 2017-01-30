class AddHouseIdToSellers < ActiveRecord::Migration[5.0]
  def change
    add_reference :sellers, :house, foreign_key: true
  end
end
