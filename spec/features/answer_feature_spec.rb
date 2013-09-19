describe "answering a question", :type => :feature do
  before :each do
    Answer.make(:content => 'this is an answer', :question_id => 1)
  end
end
