Rails.application.routes.draw do

    root "home#index"
    resources :artists do 
      resources :songs do
        resources :lyrics
      end
    end
    resources :songs
    resources :lyrics
end
