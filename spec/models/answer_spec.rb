require 'spec_helper'

describe Answer do
  let(:answer) {Answer.new(content: "this is an answer", question_id: "1")}
  describe "#Initialize" do
  	it "can be initialized" do
  		answer.should_not be_nil
  	end

  	describe Answer do
  
  			# expect { answer.question }.should_not raise_error
  			it { should belong_to(:question) }
  		
  	end
  end 

end
