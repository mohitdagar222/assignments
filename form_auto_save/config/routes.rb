Rails.application.routes.draw do
  patch "/posts/autosave" => "posts#autosave"
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  
end
