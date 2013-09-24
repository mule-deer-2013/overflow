class ResponsesController < ApplicationController

def index
  @question = Question.find(params[:question_id])
  @responses = @question.responses
end

def new
  question = Question.find(params[:question_id])
  render :status => 200, :json => render_to_string(partial: '/responses/new', locals: { question: question, response: question.responses.new }).to_json
end

def create
  @question = Question.find(params[:question_id])
  response = @question.responses.new(params[:response])
  if response.save
    render :json => render_to_string(:partial => 'responses/responses', :locals => {:response => response }).to_json
  else
    render :json => render_to_string(:partial => 'responses/error', :locals => {:errors => response.errors.full_messages.join(',') }).to_json, status: :unprocessable_entity 
  end
end

end
