class QuestionsController < ActionController::Base

  def index
  	@questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(params[:question])
    redirect_to @question
  end

  def show
  	@question = Question.find(params[:id])
    @responses = @question.responses
  end

  def edit
  end


  def update
  end

  def destroy
  end

end
