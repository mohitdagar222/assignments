class CartsController < ApplicationController
  def index
    @cartproducts = current_user.cart.cartproducts
  end
  def checkout 
    
  end

  def emptycart
      current_user.cart.cartproducts.destroy_all
      
      redirect_to '/carts/index'
  end
end
