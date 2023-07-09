module Authors
  class ArticleEntity
    include ActiveModel::Model
    attr_accessor :id, :title, :body, :authors_user_id, :created_at, :updated_at

    validates :title, presence: true
    validates :body, presence: true
    validates :authors_user_id, presence: true

    def self.find(id)
      article = Article.find(id)
      new(article.attributes)
    end

    def self.all
      Article.all.map { |article| new(article.attributes) }
    end

    def self.create(params)
      article = Article.new(params)
      article.save
      new(article.attributes)
    end

    def update(params)
      article = Article.find(id)
      article.update(params)
      article.save
      self.attributes = article.attributes
      self
    end

    def destroy
      article = Article.find(id)
      article.destroy
    end
  end
end
