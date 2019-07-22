json.extract! customer, :id, :customer_fname, :customer_lname, :customer_phone, :customer_address, :customer_city, :customer_state, :customer_zip, :created_at, :updated_at
json.url customer_url(customer, format: :json)
