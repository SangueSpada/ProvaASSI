Rails.application.routes.draw do
  get 'users/home', to: 'users#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/auth/spotify/callback', to: 'users#users_page'
  # Defines the root path route ("/")
  # root "articles#index"
end
