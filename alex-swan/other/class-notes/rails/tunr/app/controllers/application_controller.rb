class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_user

  private
  def fetch_current_user
  	if session[:user_id].present?
  		@current_user = User.find_by :id => session[:user_id] #find_by won't throw an error if there's no user, will give back a nil
  		session[:user_id] = nil unless @current_user.present?
 	end
  end

end
