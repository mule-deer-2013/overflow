require 'spec_helper'

describe QuestionsController do
  describe "GET index" do
    it "displays Index page" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
