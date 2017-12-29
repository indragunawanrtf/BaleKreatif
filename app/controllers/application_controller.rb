class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
	auto_session_timeout 1.hour

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :pekerjaan, :email, :password])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address, :pekerjaan, :email ,:password])
	end
end
