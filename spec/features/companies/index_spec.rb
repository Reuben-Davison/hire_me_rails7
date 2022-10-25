require 'rails_helper'

RSpec.describe 'Companies index page' do 
  it "is the root" do
    visit'/'
    expect(page).to have_content("Companies")
  end
  
  it "is a list of companies" do
    Company.create!(name: "ABC")
    visit'/'
    save_and_open_page
    expect(find('companies')).to have_content("Name")

    
  end
  
  
end
