class ArticlesController < ApplicationController
  def index
    @articles=Article.all
  end
  def new
    @article=Article.new
  end
  def create
    @article=Article.new(params.require(:article).permit(:title, :body, :tag_list))
    @article.save
    redirect_to articles_path
  end
  def show
    @article=Article.find(params[:id])
  end
  def edit
    @article=Article.find(params[:id])
  end
  def update
    @article=Article.find(params[:id])
    @article.update(params.require(:article).permit(:title, :body, :tag_list))
    redirect_to article_path(@article)
  end
  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  
  
end
