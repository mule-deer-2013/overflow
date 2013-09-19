require 'spec_helper'

describe Response do
  let (:q_num){99}
  let (:u_num){1}
  let (:created_response) {Response.create(user_id: u_num, question_id: q_num, body: "amazing response!") }
  let(:response) { Response.new(user_id: 1, user_id: u_num, question_id: q_num,  body: "great response!") }
  let(:empty_response) {Response.new(user_id: 2, question_id: 32,body:"")}
  
  describe "#initialize" do

    it "creates a new response" do
      Response.new(body: "great answer! thanks")
    end

    it "having an empty body is flagged as invalid" do
      expect (empty_response.valid?).should eq(false) 
    end

    it "does not create when passed invalid response" do
      expect (empty_response.save).should eq(false)
    end

    it "does not alter database when invalid is given" do
      expect {empty_response.save}.not_to change {Response.all.count}
    end

    it "is able to persist in the database when saved" do
       expect { Response.create(body: "liked your answer") }.to change { Response.all.count }.by(1)
    end

   it "is able to tell which user is its creator" do
     expect(created_response.user_id).to eq(u_num)
   end

   it "is able to tell to which Answer it belongs to" do
    expect(created_response.question_id).to eq(q_num)
  end
  
  end

end
