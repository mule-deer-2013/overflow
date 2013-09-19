describe 'Response features' do
  context "Omnipotent behaviour" do
    let!(:response) {Response.create(user_id: 1, question_id: 23, body: "camp cucamonga")}

    it "will load responses index " do
      visit responses_path
      page.should have_content(response.body)
    end


  end
end

