class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:room_name, :introduction, :price, :address, :image))
    if @post.save
       redirect_to :posts
     else
       render "new"
     end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
     @post.destroy
     flash[:notice] = "ルームを削除しました"
     redirect_to :posts
  end

  def search
    @posts = Post.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
    
  end

  def reserve
    
  end

end

