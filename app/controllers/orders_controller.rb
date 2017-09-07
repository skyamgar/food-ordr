class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def new
    @order = Order.new
    @order.build_address
  end

  def create
    @order = Order.new(order_params)
    @order.add_order_products_from_cart(@cart)
    @order.user = current_user
    if @order.save
      @cart.destroy
      session[:cart_id] = nil
      redirect_to :root, notice: "Order Created Successfully."
    else
      redirect_to :root, notice: "Please recreate the Order."
    end
  end

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(address_attributes: [:address, :locality_id])
  end
end
