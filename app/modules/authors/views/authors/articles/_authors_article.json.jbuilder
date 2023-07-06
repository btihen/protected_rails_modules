json.extract! authors_article, :id, :title, :body, :authors_user_id, :created_at, :updated_at
json.url authors_article_url(authors_article, format: :json)
