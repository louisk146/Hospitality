class CommentsController < ApplicationController
	before_action :set_hosting
	before_action :authenticate_user!

	def new
		@comment = Comment.new(comment: @hosting)
	end

	def create
		@comment = current_user.comments.build(comment_params)
		@comment.hosting = @hosting
		@comment.save
		redirect_to @hosting
	end

	private

	def set_hosting
		@hosting = Hosting.find(params[:hosting_id])
	end

	def comment_params
		params.require(:comment).permit(:comment, :rating)
	end

end