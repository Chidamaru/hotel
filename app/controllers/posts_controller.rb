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
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

