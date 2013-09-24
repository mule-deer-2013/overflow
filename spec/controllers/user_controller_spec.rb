require 'spec_helper'

describe UsersController do 
	render_views

	describe "Get 'show'" do

		before(:each) do 
			@user = FactoryGirl.create(:user)
		end

		it "should be successful" do 
			get "new"
			response.should be_success
		end
	end
end