class AdminController < ApplicationController
  def index
    @admin = Admin.find_by(name: params[:name], password: params[:password])
    if params[:name] != nil
      if @admin != nil
        session[:admin_id] = @admin.id
        redirect_to "/products"
      else
        flash[:message] = "Invalid Username Or Password"
        render "index"
      end
    end
  end

  def approve
    @cart = Cart.find_by(id: params[:id])
    @cart.cartproducts.where(order_status: "pending").update_all(order_status: "approved")
    flash[:message] = "Orders Approved Successfully" 
    redirect_to "/admin/orders"
  end

  def decline
    @cart = Cart.find_by(id: params[:id])
    @cart.cartproducts.where(order_status: "pending").update_all(order_status: "decline")
    flash[:message] = "Orders Declined Successfully" 
    redirect_to "/admin/orders"
  end

  def show_order
    @cart = Cart.find_by(id: params[:id])
    @cartproducts = @cart.cartproducts.where(order_status: "pending")
  end

  def orders
    cart_ids = Cartproduct.where(order_status: "pending").pluck(:cart_id).uniq
    @carts = Cart.where(id: cart_ids)
  end

  def signup
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      # UserMailer.welcome_email(@admin).deliver_now
      flash[:message] = "Your Account Created Successfully"
      redirect_to "/admins/login"
    else
      render "signup", status: :unprocessable_entity
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :password, :dob, :email, :address, :password_confirmation, :terms_of_services)
  end
end
