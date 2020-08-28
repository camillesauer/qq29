class ArticlesController < ApplicationController
  def index
   @article = Article.all
  end

  def new
    @article = Article.new # needed to instantiate the form_for

  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to article_path(@article)
  end
  def show
    @article = Article.find(params[:id])
 end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :sous_titre, :lieu, :date, :image_url, :content, :image_url_2, :content_2, :image_url_3, :content_3, :image_url_4, :content_4, :image_url_5, :content_5, :image_url_6, :image_url_7, :image_url_8, :image_url_9, :image_url_10)
  end
end
