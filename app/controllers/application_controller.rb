class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :add_parameters_to_user, if: :devise_controller?

  def add_parameters_to_user
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:nfirst_name) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:last_name) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:country) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nfirst_name) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:last_name) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:country) }
  
  end


  	