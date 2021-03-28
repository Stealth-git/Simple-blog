class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    # вывод хеша params[:article] на экран 
    # render plain: params[:article].inspect

    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      # возвращаем форму через action: 'new'
      render action: "new"

    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
