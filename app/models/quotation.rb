class Quotation < ApplicationRecord
  belongs_to :user
  has_many :houses
end