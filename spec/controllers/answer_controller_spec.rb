require 'spec_helper'
	


	describe AnswersController, "#update" do
		context "for a user" do
			before do
				put :update, id: 1
			end
			it { should respond_with(:success) }
			it { should render_template(:update) }
			  # it { should rescue_from(ActiveRecord::RecordNotFound).with(:render_404) }
		end 
	end