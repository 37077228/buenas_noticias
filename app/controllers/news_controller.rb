class NewsController < ApplicationController

  def index
    @categories = Category.all
    @news = News.search(params[:search]).order(created_at: :desc)
    if params[:category_id]
      @news = @news.where(categories: params[:category_id])
    end
  end

  def show
    news
  end

  def new
    @news = News.new
  end

  def edit
    news
  end

  def create
    @news = News.new(news_params)

      if @news.save
        redirect_to news_index_path, notice: "News was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
      if news.update(news_params)
        redirect_to news_url(@news), notice: "News was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    news.destroy
      redirect_to news_index_url, notice: "News was successfully destroyed."
  end

  private
    def news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:header, :body, :link, :category_id)
    end
end
