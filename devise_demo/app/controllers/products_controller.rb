class ProductsController < ApplicationController
  before_action :admins_login


  def index
    flash[:message2] = "No products found"
  
    if (params[:product_name] == nil and params[:price] == nil) or (params[:price] == "0" and params[:product_name] == "")
      @products = Product.where(admin_id: session[:admin_id]).paginate(page: params[:page])
    elsif params[:product_name] != "" and params[:price] == "0"
      @products = Product.where(admin_id: session[:admin_id]).where("name ilike ?", "#{params[:product_name]}%").paginate(:page => params[:page])
    elsif params[:price] != "0" and params[:product_name] == ""
      @products = Product.where(admin_id: session[:admin_id]).where("price < ? ", "#{params[:price]}").paginate(:page => params[:page])
    else
      @products = Product.where(admin_id: session[:admin_id]).where("price < ? and name ilike ?", "#{params[:price]}", "#{params[:product_name]}%").paginate(:page => params[:page])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.admin_id = session[:admin_id]
    if @product.save
      flash[:message] = "Product created Successfully"
      redirect_to "/products"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to "/products"
  end

  def delete
    Product.find(params[:id]).destroy
    redirect_to "/products"
  end

  def logout
    session[:admin_id] = nil
    redirect_to "/admins/login"
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def admins_login
    if session[:admin_id] == nil
      flash[:message] = "You Must Be Logged In"
      redirect_to "/admins/login"
    end
  end
end
