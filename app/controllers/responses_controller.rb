class ResponsesController < ApplicationController

def index
  @question = Question.find(params[:question_id])
  @responses = @question.responses
end

def new
  @response = Response.new
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
