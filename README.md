# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version (3.1.1), Rails (7.0.2)

* System dependencies: boh?

* Configurazione della registrazione delle credenziali (ognuno sul suo progetto visto che c è il git ignore delle credentials)
da shell: EDITOR="code --wait" bin/rails credentials:edit

inserire la coppia di chiavi
spotify:
  client_id:""
  client_secret:""

ognuno avrà la sua master key associata che serve per decodificare credentials.yml.enc



* Configurazione di rspotify:
> gemfile
    gem "rspotify"

> config/application.rb
    RSpotify::authenticate(Rails.application.credentials[:spotify][:client_id],Rails.application.credentials[:spotify][:client_secret])

> "new file" config/initializers/omniauth.rb
    require 'rspotify/oauth'

    Rails.application.config.middleware.use OmniAuth::Builder do
        provider :spotify, Rails.application.credentials[:spotify][:client_id],Rails.application.credentials[:spotify][:client_secret], scope: 'user-read-email user-read-private playlist-modify-public user-library-read user-library-modify'
    end

    OmniAuth.config.allowed_request_methods = [:post, :get]

> config/routes.rb
    get '/auth/spotify/callback', to: 'users#home'





