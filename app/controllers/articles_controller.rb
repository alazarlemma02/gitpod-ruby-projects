class ArticlesController < ApplicationController

  def index
    @articles = Article.recent.
    page(params[:page].to_s).
    per(params[:per_page].to_s)
    render json:@articles
  end

  def show
    # @ = .find()
  end

  def set_params
    params.require(:article).permit(:title, :content, :slug)
  end
end
