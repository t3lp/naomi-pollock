class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article=Article.create(article_params)
    if @article.save
      redirect_to admin_dashboard_path, notice: "Article Successfully Added"
    else
      render :new
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by id: params[:id]
  end

  def edit
    @article = Article.find_by id: params[:id]
  end

  def update
    @article = Article.find_by id: params[:id]
    if @article.update(article_params)
      redirect_to admin_dashboard_path, notice: "Article Details Successfully Updated"
    else
      render :edit
    end
  end

  def delete
      @article = Article.find_by id: params[:id]
      @article.destroy
      redirect_to admin_dashboard_path, notice: 'Article Details Removed'
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :publication, :date, :link, :text)
  end
end
