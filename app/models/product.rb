class Product < ApplicationRecord
  validates :name, :description, :quantity, :price, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name", "price", "quantity"]
  end
end
