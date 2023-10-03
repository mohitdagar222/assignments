Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # config/routes.rb
root 'pages#multi_form_page'
get '/multi_form_page', to: 'pages#multi_form_page'
post '/process_forms', to: 'pages#process_forms'


end
