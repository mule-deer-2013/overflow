require 'spec_helper'

feature "Visiting the homepage" do

  # TODO (JW): WTF is the purpose of this test?
  it "displays Index page" do
    visit root_path
    page.should have_content "Index"
  end
end
