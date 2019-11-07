class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy # should destroy child doses when destroying self
  has_many :ingredients, through: :doses
  validates :name, :presence => true, uniqueness: true
end

# @cocktail = Cocktail.new(dose,ingredient)
