class CSpotifyController < ApplicationController
  def siginin
  end

  def home
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])  # Now you can access user's private data, create playlists and much more
    # Access private data
    #paese =  spotify_user.country #=> "US"
    @email = spotify_user.email   #=> "example@email.com"
    @country = spotify_user.country
    @credentials = spotify_user.credentials
    @dp_name = spotify_user.display_name
    @propic = spotify_user.images[0].url
    #@ex_urls = spotify_user.
    #puts "paese = " +paese
    puts @email, @country,@credentials, @dp_name, @propic 
  end
end
