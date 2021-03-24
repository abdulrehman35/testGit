class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
	before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
  	@articles = Article.all.order("created_at DESC")
  end

  def new
  	@article = Article.new 
  end

  def create
  	@article = Article.new(article_params)
  	if @article.save
  		redirect_to @article
  	else
  		render 'new'
  	end
  end

  def show
  	# debugger
  	#render :show, layout: false
  end

  def edit
  end

  def preview
  	debugger
  end

  def search
  	debugger
  end

  def update
  	if  @article.update(article_params)
  		redirect_to @article
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@article.destroy
  	redirect_to root_path
  end

  private 

  def find_article
  	@article = Article.find(params[:id])
  end

  def article_params
  	params.require(:article).permit(:title, :body)
  end
end
