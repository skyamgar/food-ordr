class AddPaymentMethodIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :payment_method_id, :integer
  end
end
