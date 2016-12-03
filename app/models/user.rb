class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favs
  has_many :houses
  has_many :companies
  has_many :quotations

# revisar si lo siguiente esta bien
  has_many :quotations, :as => :seller
end
