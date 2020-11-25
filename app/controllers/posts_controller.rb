class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    end
    
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    end

  private
  def post_params 
    params.require(:post).permit(:place,:recruitment_team_id,:competition_id,:average_age_id,:gender_id,:remarks).merge(user_id: current_user.id)
  end
end 

