Rails.application.routes.draw do
  root to: 'c_spotify#siginin'
  get '/auth/spotify/callback', to: 'c_spotify#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
