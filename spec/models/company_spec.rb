require 'rails_helper'
require 'pry'

RSpec.describe Company, type: :model do
  before :each do
    @company = Company.create!(name: "ABC", 
                              location_city: "Denver",  
                              location_state: "CO", 
                              description: "Its a company",
                              website: "www.company.com",
                              industry: "school",
                              size: 3)
  end
  
  it "is a company" do
    expect(@company).to be_a(Company)
  end
  
  it "can have attributes" do 
    expect(@company.name).to eq("ABC")
    expect(@company.location_city).to eq("Denver")
    expect(@company.location_state).to eq("CO")
    expect(@company.description).to eq("Its a company")
    expect(@company.website).to eq("www.company.com")
    expect(@company.industry).to eq("school")
    expect(@company.size).to eq("2000+")
  end
  
  it "size is an enum" do
    expect(@company.size).to eq("2000+")
    @company.size = 2
    expect(@company.size).to eq("500-2000")
    @company.size = 0
    expect(@company.size).to eq("1-100")
  end
end
