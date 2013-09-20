require 'spec_helper'

describe Question do
	let(:question) {Question.new(title: 'Cool question', content: 'What is your name?')}

	describe "#initialize" do
		it 'can initialize with valid inputs' do
			expect{question.save}.to change{Question.count}.by(1)
		end

		it "cannot initialize when content or title is black" do
			expect{Question.new(content: "foo")}.to_not change{Question.count}
			expect{Question.new(title: "foo")}.to_not change{Question.count} 
		end
	end

	describe "#association" do
		it { should have_many(:responses) }
		it { should belong_to(:user)}
		it { should have_many(:responses)}
	end


end
