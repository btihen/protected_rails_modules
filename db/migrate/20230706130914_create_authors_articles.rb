class CreateAuthorsArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :authors_articles do |t|
      t.string :title
      t.text :body
      t.references :authors_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
