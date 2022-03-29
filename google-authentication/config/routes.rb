Rails.application.routes.draw do
  get 'sessions/GoogleAuth'
  get 'home/index'
  get 'auth/google_oauth2/callback', to: 'sessions#GoogleAuth'
  get 'auth/failure', to: redirect('/')
  root "home#index"
end
