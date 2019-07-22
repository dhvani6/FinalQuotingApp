json.extract! price_history, :id, :past_price, :created_at, :updated_at
json.url price_history_url(price_history, format: :json)
