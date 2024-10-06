class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "id", "name", "quantity", "recipe_id", "updated_at" ]
  end
end
