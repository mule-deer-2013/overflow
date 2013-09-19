class QuestionsController < ActionController::Base

def index
	@questions = Question.all
end

def show
	@question = Question.find(params[:id])
end

def create
	@question = Question.create(params[:question])
end

def new
	@question = Question.new
end

def update

end

def destroy

end

end