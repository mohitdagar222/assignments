class HomeController < ApplicationController
  def index
    flash[:message2] = "No products found"
  
    if (params[:product_name] == nil and params[:price] == nil) or (params[:price] == "0" and params[:product_name] == "")
      @products = Product.all.paginate(page: params[:page])
    elsif params[:product_name] != "" and params[:price] == "0"
      @products = Product.where("name ilike ?", "#{params[:product_name]}%").paginate(:page => params[:page])
    elsif params[:price] != "0" and params[:product_name] == ""
      @products = Product.where("price < ? ", "#{params[:price]}").paginate(:page => params[:page])
    else
      @products = Product.where("price < ? and name ilike ?", "#{params[:price]}", "#{params[:product_name]}%").paginate(:page => params[:page])
    end

    if current_user.present? && !current_user.cart.present?  
      Cart.create(user_id: current_user.id)
    end

  end

  def cart 
  end

  def checkout
  end

  
end