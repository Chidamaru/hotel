class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:room_name, :introduction, :price, :address, :image))
    binding.pry 
    if @post.save
      binding.pry 
       redirect_to :posts
     else
      binding.pry
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

