Rails.application.routes.draw do
  get 'cartproducts/index'
  get 'products/edit'
  get 'products/index'
  get 'index' => 'home#index'
  get 'products/new'
  get 'admin/index'
  get 'admin/orders'
  root "home#index"
  get '/cart/:id' => 'cartproducts#create'
  get '/cart/destroy/:id' => 'cartproducts#destroy' 
  get "/admins/show_order/:id" => "admin#show_order"
  get "/admins/:id/approve" => "admin#approve"
  get "/admins/:id/decline" => "admin#decline"
  get '/cart/add/:id' => 'cartproducts#add'
  get 'carts/index' => 'carts#index'
  get '/checkout' => 'carts#checkout'
  get '/empty' => 'carts#emptycart'
  devise_scope :user do
    get "/users" => "users/registrations#new"
    get "/users/password" => "users/passwords#new"
  end
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       passwords: "users/passwords",
                       registrations: "users/registrations",
                       confirmations: "users/confirmations",

                     }

  get "/admins/login" => "admin#index"
  get "/admins/signup" => "admin#signup"
  post "/admins" => "admin#create" 
  post "/checkout_informations" => "carts#create" 

  get "/cart" => "home#cart"
  get ":id/checkout" => "home#checkout"
  
  get "/products" => "products#index"
  get "/products/create" => "products#new"
  post "/products" => "products#create"
  get "/product/edit/:id" => "products#edit"
  resources :products
  get "/logout" => "products#logout"
  delete "/product/:id" => "products#delete"
  
  get "/products/index" => "products#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
