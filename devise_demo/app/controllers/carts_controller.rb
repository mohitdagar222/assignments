class CartsController < ApplicationController
  def index
    @cartproducts = current_user.cart.cartproducts
  end

  def checkout 
    @cartproducts = current_user.cart.cartproducts
  end

  def emptycart
    @cartproducts = current_user.cart.cartproducts
    OrderMailer.send_admin_email(current_user, @cartproducts).deliver_now
    OrderMailer.send_user_order_email(current_user, @cartproducts).deliver_now
    current_user.cart.cartproducts.destroy_all
    redirect_to '/carts/index'
  end
end
