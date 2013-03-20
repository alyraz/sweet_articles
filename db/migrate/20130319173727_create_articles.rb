class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :title, :null => false
      t.text    :description, :null => false
      t.string  :url, :null => false
      t.integer :category_id, :null => false
      
      t.timestamps
    end
  end
end
