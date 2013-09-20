require 'spec_helper'

describe QuestionsController do
  describe "GET index" do

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns @questions to be an array of questions" do
      new_question = Question.create(title: "test", content: "test")
      get :index
      expect(assigns(:questions)).to eql([new_question])
    end

  end

  describe "GET new" do
    before { get :new }
    it "assigns @question" do
      expect(assigns(:question)).to be_a_new(Question)
    end

    it "renders new template" do
      expect(response).to render_template("new")
    end
  end

  describe "POST create" do
    before { @question_parameter = { :title => "test", :content => "test" } }
    it "creates a Question" do
      expect {
        post :create, :question => @question_parameter
      }.to change{
        Question.count
      }.by(1)
    end

    it "assigns @question using params" do
      post :create, :question => @question_parameter
      expect(assigns(:question)).to be_a Question
    end

    it "redirects to question show" do
      post :create, :question => @question_parameter
      question = assigns(:question)
      response.should redirect_to(question_path(question))
    end
  end

  describe "GET show" do
    before { @question = Question.create(:title => "test", :content => "test") }
    before { get :show, :id => @question.id }

    it "assigns @question" do
      assigns(:question).should be_an_instance_of Question
    end

    it "renders the show template" do
      expect(response).to render_template("show")
    end
  end

  describe "GET edit" do
    before { @question = Question.create(:title => "test", :content => "test") }
    before { get :edit, :id => @question.id }

    it "renders the edit template" do
      expect(response).to render_template("edit")
    end

    it "assigns @question" do
      assigns(:question).should be_an_instance_of Question
      assigns(:question).id.should eql @question.id
    end
  end

  describe "PUT update" do
    let (:new_question_parameter) { { :title => "new", :content => "new" } }
    let (:original_question) { Question.create(:title => "test", :content => "test") }

    it "redirects to @question" do
      put :update, :id => original_question.id
      question = assigns(:question)
      question.should be_an_instance_of Question
      response.should redirect_to(question_path(question))
    end

    it "updates the question" do
      puts new_question_parameter
      expect {
        put :update, { :id => original_question.id, :question => new_question_parameter }
      }.to change {
        original_question.reload.title
      }.from('test').to('new')
    end

  end



  describe "DELETE destroy" do
    let!(:to_be_deleted) { Question.create(:title => "test", :content => "test") }

    it "deletes the question" do
      expect {
        delete :destroy, :id => to_be_deleted.id
      }.to change { Question.count }.by(-1)
    end

    it "redirects to root" do
      delete :destroy, :id => to_be_deleted.id
      response.should redirect_to(root_path)
    end

    # it "redirects"
  end


end
