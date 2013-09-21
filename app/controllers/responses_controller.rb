class ResponsesController < ApplicationController

def new
  @response = Response.new
end

def create
  # this is not working yet :(
  answer = Response.new(params[:responsable], params[:response])
  answer.save
  @question = Question.find(params[:question_id])
  redirect_to @question
 
  # if @response.save
  #   render :json => render_to_string(:partial => 'responses/responses', :locals => {:response => @response }).to_json

  # else
  #   @errors = @response.errors.full_messages
  #   render :json => render_to_string(:partial => 'responses/error', :locals => {:errors => @errors }).to_json, status: :unprocessable_entity 
  # end
end

end
