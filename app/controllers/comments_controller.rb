class CommentsController < ApplicationController]
    def create
        @comment = current_user.comments.new(comment_params)
        if @comment.save
          redirect_back(fallback_location: root_path)
        else
          redirect_back(fallback_location: root_path)
        end
      end
    
      private
      def comment_params
        params.require(:comment).permit(:comment_content, :post_id)
      end
    end

    def edit
        @comment = Comment.find_by(params[:id])
    end

    def destroy
        @post_comment = Comment.find_by(params[:id])
        @post_comment.destroy
        redirect_to post_show_path(params[:id]) 
    end

end
