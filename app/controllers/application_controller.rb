class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def user_not_authorized( exception )
        flash.alert = "User not authorized"
        redirect_to posts_path
    end
end

