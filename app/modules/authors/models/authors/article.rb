module Authors
  class Article < ApplicationRecord
    # class_name: 'Authors::User' is needed otherwise Rails assumes the class AuthorsUser
    belongs_to :authors_user, class_name: 'Authors::User'
  end
  private_constant :Article
end
