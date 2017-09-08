class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :payment_method
  has_one :address
  has_one :order_receipt
  has_many :order_products, dependent: :destroy

  accepts_nested_attributes_for :address

  def add_order_products_from_cart(cart)
    total_amount = 0
    cart.order_products.each do |order_product|
      order_product.cart = nil
      self.order_products << order_product
      total_amount = total_amount + order_product.amount
    end
    self.amount = total_amount
  end
end
