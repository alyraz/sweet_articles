class Article < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :category

  attr_accessible :title, :description, :url, :category_id, :description

  validates :title, :description, :url, :category_id, :presence => true
  # validates :url, :uniqueness => { case_sensitive: false}
  
end
