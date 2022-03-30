Rails.application.routes.draw do
  get 'sessions/GithubAuth'
  root 'home#index'
  get 'auth/github/callback' => 'sessions#GithubAuth'
  get '/user/logout' => 'sessions#destroy'

end
