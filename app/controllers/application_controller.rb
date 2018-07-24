class ApplicationController < ActionController::Base
  
  # devise 설정
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :camera])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :camera])
  end
  
  
end
