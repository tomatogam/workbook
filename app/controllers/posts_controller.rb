class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @post = Post.new
    @sub_categories = SubCategory.all
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to chapter_new_url
    else
      render 'posts/new'
    end
  end

  def destroy
  end

  def show
    @post = Post.find_by(params[:id])
  end
  
  private

    def post_params
      params.require(:post).permit(:title, :detail, :sub_category_id)
    end
end
