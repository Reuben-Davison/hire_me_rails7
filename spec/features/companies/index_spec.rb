require 'rails_helper'

RSpec.describe 'Companies index page' do 
  it "is the root" do
    visit'/'
    expect(page).to have_content("Companies")
  end
  
  it "is a list of companies" do
    company = Company.create!(name: "ABC")
    Company.create!(name: "def")
    Company.create!(name: "dfg")
    visit'/'
    within("#companies") do 
      expect(page).to have_content("Name:")
      expect(page).to have_content("Description:")
      within("#company_#{company.id}") do 
        expect(page).to have_content("Name: ABC")
        expect(page).to_not have_content("Name: def")
        expect(page).to_not have_content("Name: dfg")
      end
    end 
    
  end
  
  
end
