json.extract! authors_user, :id, :full_name, :email, :created_at, :updated_at
json.url authors_user_url(authors_user, format: :json)
