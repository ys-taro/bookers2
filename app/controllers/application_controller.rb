class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramerts, if: :devise_controller?

  protected

  def configure_permitted_paramerts
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
