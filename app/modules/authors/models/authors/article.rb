class Authors::Article < ApplicationRecord
  belongs_to :authors_user, class_name: 'Authors::User'
end
