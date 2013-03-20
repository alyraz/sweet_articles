SweetArticles::Application.routes.draw do

  root :to => 'articles#index'

  match "/articles/:month/:day/:year/:title" => "articles#legacy_format"


  resources :categories do
    resources :articles
  end


  
end

#<li><a href="/category/<%=article.category.name%>/articles/<%= article.title %>"><%= article.title %></a></li>
