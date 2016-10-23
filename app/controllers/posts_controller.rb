class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new   
  end

  def create
    @post = Post.new(post_params)
    @post.tenant_id = 1
    if @post.save
      flash[:success] = "You post was created"
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit!
  end




  

end