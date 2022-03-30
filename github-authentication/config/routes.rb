Rails.application.routes.draw do
  get 'sessions/GithubAuth'
  root 'home#index'
  get 'auth/github/callback' => 'sessions#GithubAuth'

end
