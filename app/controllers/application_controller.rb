class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def check_if_user_logged_in?
        if !current_user
            redirect_to new_user_session_path, alert: "Must be logged in!"
        end
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :location])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :location, :avatar])
    end

end
