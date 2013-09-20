require 'spec_helper'

describe Response do
  let(:question) {Question.create(title: 'question', content: "question's content?")}
  let(:answer) { question.responses.build(content: "answer",responsable_type: "Question")}
  let(:comment) { answer.responses.build(content: "comment", responsable_type: "Response")}

  describe "#initialize_answer" do
    it "can initialize with valid input" do
      expect { 
        answer.save
      }.to change{ question.responses.count }.by(1) 
    end

    it "cannot initialize if content is blank" do
      expect { Response.create }.to_not change{Response.count}
    end
  end

  describe ".association" do
    it { should have_many(:votes) }
    it { should have_many(:responses) }
    it { should belong_to(:responsable) }
  end
end
