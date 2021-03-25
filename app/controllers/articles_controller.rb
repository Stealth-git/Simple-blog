class ArticlesController < ApplicationController

  def new
  end

  def create
    # вывод хеша params[:article] на экран 
    render plain: params[:article].inspect
  end
end
