class CommentsController < ApplicationController
  before_filter :find_post

  def index
	@comments = @post.comments.all
  end

  def new
	@comment = @post.comments.new
  end

  def create
	@comment = current_user.comments.build(:comment)
	@comment.post = @post
	if @comment.save
		redirect_to @post
	else
		render :edit
	end
  end
  
  def find_post
    @post = Post.find(params[:post_id])
  end
end
