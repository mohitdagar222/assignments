class SessionsController < ApplicationController
  def TwitterAuth

    access_token = request.env["omniauth.auth"]
    @user = User.from_omniauth(access_token)
    @user.save
    session[:user_id] = @user.id
    redirect_to "/"
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

end
