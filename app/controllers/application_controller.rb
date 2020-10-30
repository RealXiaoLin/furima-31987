class ApplicationController < ActionController::Base
  before_action :devise_permitted_parameters, if: :devise_controller?

  protected

  def devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name, :kana_first_name, :kana_last_name, :birthday])
  end
end
