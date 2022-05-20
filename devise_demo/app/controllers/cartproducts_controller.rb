class CartproductsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    cp = Cartproduct.find_by(id: params[:id])
    cp.destroy
    redirect_to "/carts/index"
  end

  def add
    cp = Cartproduct.find_by(id: params[:id])
    current_user.cart.cartproducts.create(product_id: cp.product_id)
    redirect_to "/carts/index", allow_other_host: true
  end

  def create
    current_user.cart.cartproducts.create(product_id: params[:id])
    redirect_to "/carts/index", allow_other_host: true
  end
end
