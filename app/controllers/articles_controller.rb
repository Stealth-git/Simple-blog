class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    # вывод хеша params[:article] на экран 
    # render plain: params[:article].inspect

    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      # возвращаем форму через action: 'new'
      render action: "new"

    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      # возвращаем форму через action: 'edit'
      render action: "edit"

    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
