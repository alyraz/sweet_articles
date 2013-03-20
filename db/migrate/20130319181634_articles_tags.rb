class ArticlesTags < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|
      t.integer :article_id, :null => false
      t.integer :tag_id, :null => false
    end

    add_index :articles_tags, [:article_id, :tag_id], :unique => true
  end

end
