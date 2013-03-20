#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

SweetArticles::Application.load_tasks

#   desc "creates AR tag objects from tags in old_articles"
#   task :migrate_tags => :environment do
#     sql_string = <<-SQL
#       select tags
#       from old_articles
#     SQL
#     ActiveRecord::Base.establish_connection
#     tags = ActiveRecord::Base.connection.execute(sql_string)
#     tags = tags.values.flatten.map { |t| t.split(',') }.flatten.map{ |t| t.strip }
#     tags.each do |tag|
#       Tag.find_or_create_by_name(tag)
#     end 
#   end


#   desc "creates AR category objects from categories in old_articles"
#   task :migrate_categories => :environment do
#     sql_string = <<-SQL 
#       select category
#       from old_articles
#     SQL
#     ActiveRecord::Base.establish_connection
#     categories = ActiveRecord::Base.connection.execute(sql_string)
#     categories.values.each do |category|
#       Category.find_or_create_by_name(category[0].downcase.gsub('-',' '))
#     end
#   end 





  


