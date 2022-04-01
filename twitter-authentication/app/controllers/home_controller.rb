class HomeController < ApplicationController
  require 'rest-client'

  def index
    if @current_user.present?
        response =  RestClient.get "https://api.twitter.com/2/users/#{@current_user.uid}/tweets", {:Authorization => 'Bearer AAAAAAAAAAAAAAAAAAAAAA3bawEAAAAABfTGshMxeWxPIj7ydEwQ6vFpsQ8%3D64Qg3LkgcnjyzBQINpHfV46rfKc1cf7pQXFpf7ExXSqlOmw9uM'} 
        @tweets = JSON.parse(response.body)
    end
    
  end
end
