class SessionsController < ApplicationController

  include SessionsHelper

  def create
    @user = User.find_by_username(params[:username])
      if @user
        login(@user)
        redirect_to root_path
      else
        # handle with error message
      end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end