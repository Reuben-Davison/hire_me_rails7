require 'rails_helper'

RSpec.describe 'Companies index page' do 
  it "is the root" do
    visit'/'
    expect(page).to have_content("Companies")
    
  end
  
end
