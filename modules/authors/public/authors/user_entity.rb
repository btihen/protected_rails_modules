module Authors
  class UserEntity
    include ActiveModel::Model
    attr_accessor :id, :full_name, :email, :created_at, :updated_at

    validates :full_name, presence: true
    validates :email, presence: true

    def self.find(id)
      user = User.find(id)
      new(user.attributes)
    end

    def self.all
      User.all.map { |user| new(user.attributes) }
    end

    def self.create(params)
      user = User.new(params)
      user.save
      new(user.attributes)
    end

    def update(params)
      user = User.find(id)
      user.update(params)
      user.save
      self.attributes = user.attributes
      self
    end

    def destroy
      user = User.find(id)
      user.destroy
    end
  end
end
