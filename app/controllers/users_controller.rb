class UsersController < ApplicationController

	def show

	end
	

def new 
	@user = User.new
end

 def create

    @user= User.new(params[:user])
    if @user.save
      flash[:notice] = " logged in "
      redirect_to '/'
    else
      flash[:notice] = @user.errors.full_messages  
      redirect_to new_user_path 
    end   

  end

end
