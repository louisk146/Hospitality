class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :add_parameters_to_user, :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :date, :address1, :address2, :description, :country, :city, :postalcode, :email, :image, :latitude,:longitude, :category_id, :email, :phone, :socialmedia])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :date, :address1, :address2, :description, :country, :city, :postalcode, :email, :image, :latitude,:longitude, :category_id, :email, :phone, :socialmedia])
  end

  def add_parameters_to_user
    devise_parameter_sanitizer.permit(:sign_up [:first_name])
    devise_parameter_sanitizer.permit(:sign_up [:last_name])
    devise_parameter_sanitizer.permit(:sign_up  [:country])
    devise_parameter_sanitizer.permit(:account_update [:first_name])
    devise_parameter_sanitizer.permit(:account_update [:last_name])
    devise_parameter_sanitizer.permit(:account_update [:country])
  end

 protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :email, bank_attributes: [:bank_name, :bank_account]])
  end
end