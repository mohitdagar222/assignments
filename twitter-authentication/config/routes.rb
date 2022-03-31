Rails.application.routes.draw do
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 get 'auth/twitter/callback' => 'sessions#TwitterAuth'
  # Defines the root path route ("/")
  # root "articles#index"
end
