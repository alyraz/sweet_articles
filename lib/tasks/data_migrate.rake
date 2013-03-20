namespace :populate do 
  desc "create AR article objects from articles in old_articles"
  task :migrate_articles => :environment do
    sql_string = <<-SQL
      select * 
      from old_articles
    SQL
    ActiveRecord::Base.establish_connection
    categories = ActiveRecord::Base.connection.execute(sql_string)
    categories.values.each do |row|
      new_article = Article.create title: row[1],
                                    description: row[2],
                                    url: row[3],
                                    category_id: Category.find_or_create_by_name(row[4].downcase.gsub('-', ' ')).id
      row[5].split(',').map { |tag| tag.strip }.each do |tag|
        new_article.tags << Tag.find_or_create_by_name(tag)
      end
      new_article.save!
      puts "We just created a new article with the id #{new_article.id}"
      m = new_article.url.match(/(\d{1,2})\/(\d{1,2})\/(\d{4})/)
      orig_created_at = DateTime.new(m[3].to_i, m[1].to_i, m[2].to_i)
      new_article.update_attribute(:created_at, orig_created_at)
    end
  end

    
end
