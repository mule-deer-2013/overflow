class QuestionsController < ApplicationController

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
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    # @question.title = params[:question][:title]
    # @question.content = params[:question][:content]
    # @question.save
    # @question.update_attributes(params[:question])
    redirect_to @question
  end

  def destroy
    @question = Question.find(params[:id]).destroy
    redirect_to root_path
  end

end
