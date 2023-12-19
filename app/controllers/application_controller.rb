class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_query

  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_query
    @query = Vacancy.ransack(params[:q])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :phone, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :phone, :email, :password, :current_password) }
  end
end
