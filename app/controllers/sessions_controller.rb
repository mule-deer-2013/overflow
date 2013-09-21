class SessionsController < ApplicationController

	def create
		user = User.find_by_username(params[:username])
		session[:user_id] = user.id
		redirect_to rooot_path
	end

	def destroy
		session[:user_id] = nil
		redirect_to rooot_path
	end
end


