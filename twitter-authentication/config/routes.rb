Rails.application.routes.draw do
  get 'sessions/TwitterAuth'
  root 'home#index'
  get '/user/logout' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 get 'auth/twitter/callback' => 'sessions#TwitterAuth'
  # Defines the root path route ("/")
  # root "articles#index"
end
