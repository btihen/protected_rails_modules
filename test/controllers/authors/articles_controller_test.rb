require "test_helper"

class Authors::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authors_article = authors_articles(:one)
  end

  test "should get index" do
    get authors_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_authors_article_url
    assert_response :success
  end

  test "should create authors_article" do
    assert_difference("Authors::Article.count") do
      post authors_articles_url, params: { authors_article: { authors_user_id: @authors_article.authors_user_id, body: @authors_article.body, title: @authors_article.title } }
    end

    assert_redirected_to authors_article_url(Authors::Article.last)
  end

  test "should show authors_article" do
    get authors_article_url(@authors_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_authors_article_url(@authors_article)
    assert_response :success
  end

  test "should update authors_article" do
    patch authors_article_url(@authors_article), params: { authors_article: { authors_user_id: @authors_article.authors_user_id, body: @authors_article.body, title: @authors_article.title } }
    assert_redirected_to authors_article_url(@authors_article)
  end

  test "should destroy authors_article" do
    assert_difference("Authors::Article.count", -1) do
      delete authors_article_url(@authors_article)
    end

    assert_redirected_to authors_articles_url
  end
end
