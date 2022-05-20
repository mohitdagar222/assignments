class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    flash[:message2] = "No products found"
    
    if current_user.present? && !current_user.cart.present?  
      Cart.create(user_id: current_user.id)
    end

    if (params[:product_name] == nil) or (params[:product_name] == "")
      @products = Product.all.paginate(page: params[:page])
    else 
      @products = Product.where("name ilike ?", "#{params[:product_name]}%").paginate(:page => params[:page])
    end  
  end

  def cart 
  end

  def checkout
  end

end