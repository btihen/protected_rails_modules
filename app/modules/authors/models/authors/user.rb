class Authors::User < ApplicationRecord
  # has_many :authors_articles, dependent: :destroy
  has_many :authors_articles, class_name: 'Authors::Article', foreign_key: 'authors_user_id', dependent: :destroy
end
