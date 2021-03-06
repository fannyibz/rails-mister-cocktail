class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_associated :cocktail, :ingredient

  validates :description, presence: true

  # validates :ingredient_id, presence: true
  # validates :cocktail_id, presence: true


  # validates_uniqueness_of :cocktail_id, scope: :ingredient_id
  validates :ingredient, uniqueness: { scope: :cocktail,
    message: "should create only one dose per cocktail and ingredient" }

end
