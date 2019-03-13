class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configured_permitted_parameters, if: :devise_controller?

  protected

  def configured_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :username, :email, :password, :gender, :birthday, :position, :remember_me)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :username, :email, :password, :about, :gender, :birthday, :position, :remember_me)}
  end
end
