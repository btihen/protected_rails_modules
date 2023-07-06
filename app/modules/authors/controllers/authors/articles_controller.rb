module Authors
  class ArticlesController < ApplicationController
    before_action :set_authors_article, only: %i[ show edit update destroy ]

    # GET /authors/articles or /authors/articles.json
    def index
      @authors_articles = Article.all
      # @authors_articles = Authors::Article.all
    end

    # GET /authors/articles/1 or /authors/articles/1.json
    def show
    end

    # GET /authors/articles/new
    def new
      @authors_article = Article.new
      # @authors_article = Authors::Article.new
    end

    # GET /authors/articles/1/edit
    def edit
    end

    # POST /authors/articles or /authors/articles.json
    def create
      # binding.irb
      # author = Authors::User.find authors_article_params[:authors_user_id]
      # article_params = authors_article_params.except(:authors_user_id).merge(authors_user: author)
      # @authors_article = Authors::Article.new(article_params)
      @authors_article = Article.new(authors_article_params)
      # @authors_article = Authors::Article.new(authors_article_params)

      respond_to do |format|
        if @authors_article.save
          format.html { redirect_to authors_article_url(@authors_article), notice: "Article was successfully created." }
          format.json { render :show, status: :created, location: @authors_article }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @authors_article.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /authors/articles/1 or /authors/articles/1.json
    def update
      respond_to do |format|
        if @authors_article.update(authors_article_params)
          format.html { redirect_to authors_article_url(@authors_article), notice: "Article was successfully updated." }
          format.json { render :show, status: :ok, location: @authors_article }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @authors_article.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /authors/articles/1 or /authors/articles/1.json
    def destroy
      @authors_article.destroy!

      respond_to do |format|
        format.html { redirect_to authors_articles_url, notice: "Article was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_authors_article
        @authors_article = Article.find(params[:id])
        # @authors_article = Authors::Article.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def authors_article_params
        params.require(:authors_article).permit(:title, :body, :authors_user_id)
      end
  end
end
