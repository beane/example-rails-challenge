json.array!(@companies) do |company|
  json.extract! company, :id, :name, :zip_code, :customer_id, :customer_type
  json.url company_url(company, format: :json)
end
