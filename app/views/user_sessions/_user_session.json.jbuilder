json.extract! user_session, :id, :IP_add, :string, :timestamp, :time, :cart_number, :integer, :user_account_id, :integer, :user_visit, :user_transaction, :created_at, :updated_at
json.url user_session_url(user_session, format: :json)
