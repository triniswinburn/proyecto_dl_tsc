class AddCompanyIdToSellers < ActiveRecord::Migration[5.0]
  def change
    add_reference :sellers, :company, foreign_key: true
  end
end
