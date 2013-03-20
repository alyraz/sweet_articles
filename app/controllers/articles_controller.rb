class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show 
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end 

  def legacy_format
    @article = Article.find_by_title(params[:title])
    @category = @article.category 
    redirect_to category_article_path(@article.category, @article) #"/category/#{@category.name}/articles/#{@article.title}"
  end

end
