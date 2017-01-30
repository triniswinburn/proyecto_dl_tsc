class AddCompanyToSeller < ActiveRecord::Migration[5.0]
  def change
    add_column :sellers, :company, :integer
  end
end
