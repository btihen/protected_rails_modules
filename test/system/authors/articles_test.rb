require "application_system_test_case"

class Authors::ArticlesTest < ApplicationSystemTestCase
  setup do
    @authors_article = authors_articles(:one)
  end

  test "visiting the index" do
    visit authors_articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit authors_articles_url
    click_on "New article"

    fill_in "Authors user", with: @authors_article.authors_user_id
    fill_in "Body", with: @authors_article.body
    fill_in "Title", with: @authors_article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit authors_article_url(@authors_article)
    click_on "Edit this article", match: :first

    fill_in "Authors user", with: @authors_article.authors_user_id
    fill_in "Body", with: @authors_article.body
    fill_in "Title", with: @authors_article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit authors_article_url(@authors_article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
