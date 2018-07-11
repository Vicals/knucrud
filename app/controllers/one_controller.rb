class OneController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @post = One.all.reverse
  end

  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])

    @post = One.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category = params[:category]
    @post.user_id = current_user.id
    @post.image = uploader.url
    @post.save

    redirect_to "/one/index"
  end

  def new
  end

  def show
    @post = One.find(params[:id])
  end

  def destroy
    @post = One.find(params[:id])
    @post.destroy

    redirect_to "/one/index"
  end

  def update
    @post = One.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category = params[:category]
    @post.save

    redirect_to "/one/show/#{params[:id]}"
  end

  def edit
    @post = One.find(params[:id])
  end
end
