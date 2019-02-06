class User < ApplicationRecord
  has_many :recipes
  has_many :allergenns
  has_many :ingredients, through: :allergenns
  
end
