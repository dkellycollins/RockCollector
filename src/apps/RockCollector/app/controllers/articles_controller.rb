class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(article_params)

    if @article.save
      return redirect_to @article
    end

    render 'new'
  end

  def edit
    @article = Article.find(params[:id]);
  end

  def update
    @article = Article.find(params[:id])

    if !@article.nil? && @article.update(article_params)
      return redirect_to @article
    end

    render 'edit'
  end

  def destroy
    @article = Article.find(params[:id])

    unless @article.nil?
      @article.destroy
    end

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text);
    end

end
