class FoodItem < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :order_products
end
