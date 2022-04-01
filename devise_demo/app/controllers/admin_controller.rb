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
