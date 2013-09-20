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
     flash[:error] = @response.errors.full_messages
     redirect_to question_path(question)
  end
end

end
