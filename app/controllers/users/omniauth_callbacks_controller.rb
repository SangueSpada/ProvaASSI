class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def spotify
        # You need to implement the method below in your model (e.g. app/models/user.rb)
        @user = User.from_omniauth(request.env["omniauth.auth"])
        puts "utente è:"+ @user
        sign_in_and_redirect @user
    end
end