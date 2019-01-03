json.extract! user_account, :id, :user_email, :user_password, :user_first_name, :user_last_name, :user_visit, :user_transaction, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)
