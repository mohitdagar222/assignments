class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cartproducts = current_user.cart.cartproducts.where(order_status: "added") || []
  end

  def checkout 
    @checkout_information = CheckoutInformation.new
  end

  def emptycart
    @cartproducts = current_user.cart.cartproducts.where(order_status: "added")
    begin
      OrderMailer.send_admin_email(current_user, @cartproducts).deliver_now
      OrderMailer.send_user_order_email(current_user, @cartproducts).deliver_now
    rescue
      puts "Please Check Your Network"
    end
    current_user.cart.cartproducts.where(order_status: "added").update_all(order_status: "pending")
  end

  def create
    @checkout_information = current_user.checkout_informations.create(checkout_params)
    @checkout_information.cart_id = current_user.cart.id
    @checkout_information.save
    emptycart
    redirect_to '/carts/index'
  end

  private

  def checkout_params
    params.require(:checkout_information).permit(:first_name, :last_name, :email, :address, :address_2, :pin_code, :country, :state)  
  end

end
