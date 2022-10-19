require "./app/models/company"
require 'csv'
require 'pry'

namespace :csv_load do 
    task company: :environment do 
        csv_text = File.read(Rails.root.join("db", "data", "companies.csv"))
        csv = CSV.parse(csv_text, headers: true)

        csv.each do |row| 
            c = Company.new 
            c.name = row["Company Name"]
            c.location_city = row["Location City"]
            c.location_state = row["Location State"]
            c.description = row["Description"]
            c.website = row["Website"]
            c.industry = row["Industry"]
            c.size = row["Company Size"]
            c.save 
            puts "#{c.name} saved"
        end

    end
end