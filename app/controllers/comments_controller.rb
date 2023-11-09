class CommentsController < ApplicationController
    def create
        @comment = current_user.comments.new(comment_params)
        if @comment.save
          redirect_to blog_post_path(params[:blog_post_id]), notice: 'Comment was successfully created.'
        else
          flash[:alert] = @comment.errors.full_messages.to_sentence
          redirect_to blog_post_path(params[:blog_post_id])
        end
      end
    
      private
    
      def comment_params
        params.require(:comment).permit(:content, :parent_id).merge(blog_post_id: params[:blog_post_id])
      end
    end