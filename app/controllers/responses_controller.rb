class ResponsesController < ApplicationController

def index
  @responses = Response.all
end

def new
@response = Response.new
end

def create
  @response = Response.create(params[:response])
  if @response
    render response_index.html.erb
  else
     @alert = @response.errors.full_messages
     render responses_new.html.erb
  end
end

def destroy 
end




end
