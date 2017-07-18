class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :add_parameters_to_user, if: :devise_controller?

  def add_parameters_to_user

    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :country])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :country])
end
end
