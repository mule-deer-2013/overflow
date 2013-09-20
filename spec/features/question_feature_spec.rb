require 'spec_helper'

feature "Visiting the homepage" do
  it "displays Index page" do
    visit root_path
    # save_and_open_page
    page.should have_content "Index"
  end
end
