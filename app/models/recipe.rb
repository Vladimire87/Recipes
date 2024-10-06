class Recipe < ApplicationRecord
  has_many :ingredients
  validates :title, :description, presence: true, uniqueness: true
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    [ "description", "title" ]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "ingredients" ]
  end
end
