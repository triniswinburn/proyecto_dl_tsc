class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :photo

      t.timestamps
    end
  end
end
