Rails.application.routes.draw do
  root to: 'c_spotify#siginin'
  get '/auth/spotify/callback', to: 'c_spotify#home'

  resources :posts #(racchiude get post,patch,put,delete dei post quando verranno implementati)
end
