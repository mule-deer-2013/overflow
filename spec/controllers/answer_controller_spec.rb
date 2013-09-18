require 'spec_helper'
	


	describe AnswersController, "#update" do
		context "for a user" do
			before do
				put :update, id: 1
			end
			it { should respond_with(:success) }
		end 
	end