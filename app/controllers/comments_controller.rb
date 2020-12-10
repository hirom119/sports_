class CommentsController < ApplicationController
  def index
    @comments = Comment.order('creatd_at DESC')
  end

  def new
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(text: params[:comment][:text], post_id: params[:post_id],
                           user_id: current_user.id)
    user = User.find(current_user.id)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel',
                                   comment: @comment,
                                   team: user.team
    end
  end
end
