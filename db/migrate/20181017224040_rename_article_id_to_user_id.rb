class RenameArticleIdToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column("articles", "article_id", "user_id")
  end
end
