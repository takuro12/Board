class ApplicationController < ActionController::Base


  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  
  
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name image sex adress club self_induction))
     devise_parameter_sanitizer.permit(:account_update, keys: %i(name image sex adress club self_induction))
  end


end
