module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Authors::ArticleEntity.all
        render json: { status: 'SUCCESS', message: 'Loaded articles', data: articles }, status: :ok
      end

      # Define other CRUD actions...
    end
  end
end
