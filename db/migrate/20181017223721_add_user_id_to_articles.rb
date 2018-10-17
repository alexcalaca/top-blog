class AddUserIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :article, foreign_key: true
  end
end
