class OneController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @post = One.all
  end

  def create
    @post = One.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category = params[:category]
    @post.user_id = current_user.id
    @post.save

    redirect_to "/one/index"
  end

  def new
  end

  def show
    @post = One.find(params[:id])
  end

  def destroy
  end

  def update
  end

  def edit
    @post = One.find(params[:id])
  end
end
