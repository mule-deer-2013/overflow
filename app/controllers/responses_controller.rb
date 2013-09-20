class ResponsesController < ApplicationController

def new
@response = Response.new
end

def create
  @response = Response.new(body: params[:response][:body], question_id: params[:question_id])
  question = Question.find(params[:question_id])
  if @response.save
    render :json => render_to_string(:partial => 'responses/responses', :locals => {:response => @response }).to_json

  else
    @errors = @response.errors.full_messages
    render :json => render_to_string(:partial => 'responses/error', :locals => {:errors => @errors }).to_json, status: :unprocessable_entity 
  end
end

end
