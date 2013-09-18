require 'spec_helper'

describe Question do
	let(:question_valid) {Question.new(user_id: 1, title: 'Cool question', content: 'What is your name?')}
	let(:question_with_nil) {Question.new(user_id: 1, content: nil)}
	it 'can be created' do
		question_valid.should be_valid	
	end
	it 'is invalid without content' do
		question_with_nil.should_not be_valid
	end

	it 'returns the questions content' do
		question_valid.content.should == 'What is your name?'
	end

	it 'returns the questions content' do
		question_valid.title.should == 'Cool question'
	end

end