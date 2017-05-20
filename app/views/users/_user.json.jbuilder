json.extract! user, :id, :name, :username, :email, :role, :status, :created_at, :updated_at
json.url user_url(user, format: :json)