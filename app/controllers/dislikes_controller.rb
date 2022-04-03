class DislikesController < ApplicationController
    def create
        @post_dislike = Dislike.new(user_id: current_user.id, post_id: params[:post_id])
        @post_dislike.save
        redirect_to post_show_path(params[:post_id])
    end

    def destroy
        @post_dislike = Dislike.find_by(user_id: current_user.id, post_id: params[:post_id])
        @post_dislike.destroy
        redirect_to post_show_path(params[:post_id])
    end
end
