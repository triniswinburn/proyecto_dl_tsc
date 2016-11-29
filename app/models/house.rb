class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :favs
  has_many :quotations
end
