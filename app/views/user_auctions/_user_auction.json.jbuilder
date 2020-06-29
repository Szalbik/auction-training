json.extract! user_auction, :id, :finished_at, :name, :description, :minimal_price, :account_id, :created_at, :updated_at
json.url user_auction_url(user_auction, format: :json)
