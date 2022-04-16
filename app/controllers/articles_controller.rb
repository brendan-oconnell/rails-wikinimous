class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    get_article
  end

  def new
    @article = Article.new # needed to instantiate the form_for
  end

  private

  def get_article
    @article = Article.find(params[:id])
  end

end
