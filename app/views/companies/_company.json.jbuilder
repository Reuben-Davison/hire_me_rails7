json.extract! company, :id, :name, :location_city, :location_state, :description, :website, :industry, :size, :created_at, :updated_at
json.url company_url(company, format: :json)
