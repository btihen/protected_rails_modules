module Authors
  class User < ApplicationRecord
  # class_name: 'Authors::Article' is needed otherwise Rails assumes the class AuthorsArticle
    has_many :authors_articles, class_name: 'Authors::Article', foreign_key: 'authors_user_id', dependent: :destroy
  end
  private_constant :User
end
