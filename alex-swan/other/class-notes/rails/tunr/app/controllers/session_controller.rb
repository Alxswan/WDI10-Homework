class SessionController < ApplicationController
  def new
  end

  def create
  	# check if user and password match
  	# if correct, log user in
  	user = User.find_by :email => params[:email]
  	if user.present? && user.authenticate(params[:password])
  		session[:user_id] = user.id 
  		redirect_to root_path
  	else
  		redirect_to login_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

end

