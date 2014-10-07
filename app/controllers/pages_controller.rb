class PagesController < ApplicationController
  def index
    @articles = Article.order("published_on desc").limit(4)
  end

  def about
  end
  
  def employment
  end
  
  def advocacy
  end
end
