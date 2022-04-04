class CartproductsController < ApplicationController

  def destroy
    cp = Cartproduct.find_by(id: params[:id])
    cp.destroy
    redirect_to "/carts/index"
  end

  def create
    current_user.cart.cartproducts.create(product_id: params[:id])
    redirect_to "/carts/index", allow_other_host: true
  end
end
