class SessionsController < ApplicationController
  def GithubAuth
    debugger
      access_token = request.env["omniauth.auth"]
      user = User.from_omniauth(access_token)
      user.google_token = access_token.credentials.token
      refresh_token = access_token.credentials.refresh_token
      user.google_refresh_token = refresh_token if refresh_token.present?
      user.save
      session[:user_id] = user.id
    redirect_to "/"
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
