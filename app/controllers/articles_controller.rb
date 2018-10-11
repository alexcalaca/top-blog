class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:edit, :update, :show, :delete, :destroy]
  
  
  def new
    @article = Article.new
  end
  
  def edit
  end
  
  def update
    if @article.update_attributes(articles_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to article_path(@article)
    else
      render('edit')
    end
  end
  
  def create
    @article = Article.new(articles_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render :new
    end
  end
  
  def show
  end
  
  def index
    @articles = Article.all
  end
  
  def delete
  end
  
  def destroy
    if @article.destroy
      flash[:notice] = "Article was deleted successfully"
      redirect_to articles_path
    end
  end
  
  private
  
  def set_article
    @article = Article.find(params[:id])
  end
  
  def articles_params
    params.require(:article).permit(:title, :description)
  end
  
end