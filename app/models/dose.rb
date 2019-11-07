class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
  #is unique for a given cocktail/ingredient couple
end

# doseforcocktail = Dose.new(cocktail)
# doseforingredient = Dose.new(ingredient)

# @dose = Dose.new(dose_params)


