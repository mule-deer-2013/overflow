require 'spec_helper'

describe Vote do
  let(:question) { Question.create(title: 'question', content: "question's content?")}
  let(:answer) { question.responses.create(content: "answer",responsable_type: "Question")}
  let(:comment) { answer.responses.create(content: "comment",responsable_type: "Response")}
  let(:question_vote) { question.votes.build(value: 1) }
  let(:answer_vote) {answer.votes.build(value: -1)}
  let(:comment_vote) {comment.votes.build(value: 1)}

  describe "#initialize" do
    context "question_vote" do
      it "can initialize with valid input" do
        expect { question_vote.save }.to change{ question.votes.count }.by(1)
      end
    end

    context "answer_vote" do
      it "can intialize with valid input" do
        expect { answer_vote.save }.to change{ answer.votes.count }.by(1)
      end
    end

    context "comment_vote" do
      it "can intialize with valid input" do
        expect { comment_vote.save }.to change{ comment.votes.count }.by(1)
      end
    end
  end
end
