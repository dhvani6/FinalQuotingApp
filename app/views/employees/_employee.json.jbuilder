json.extract! employee, :id, :employee_fname, :employee_lname, :employee_phone, :store_location, :is_manager, :created_at, :updated_at
json.url employee_url(employee, format: :json)
