class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
end

# should not be able to destroy self if has dose children
# validates :destroy :unless => { ingredient_id.any? }
# :unless => Proc.new { |a| a.password.blank? }


# @ingredient = Ingredient.new(ingredient_params)
