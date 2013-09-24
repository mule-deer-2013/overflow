require 'spec_helper'

describe 'Response features' do
  context "Omnipotent behaviour" do
    let(:question) { Question.create(title: 'how are you?', content: 'i dunno') }
    let!(:response) { question.responses.create(content: "camp cuamonga") }

    it "will load responses index " do
      visit question_responses_path(question)
      page.should have_content(response.content)
    end

  end
end

