Rails.application.routes.draw do
  resources :posts
  root "posts#index"
  get "/sort/:order" => "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
