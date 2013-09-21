require 'spec_helper'

describe UsersController do 
	render_views

	describe "Get 'show'" do

		before(:each) do 
			@user = Factory(:user)
		end

		it "should be successful" do 
			get "new"
			response.should be_sucess
		end
	end
end