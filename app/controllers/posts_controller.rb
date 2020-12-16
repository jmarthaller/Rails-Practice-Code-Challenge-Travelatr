class PostsController < ApplicationController 
    before_action :set_post, only: [:show]

    def show
    end

    def new 
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    private 
    def post_params 
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end 

    def set_post 
        @post = Post.find(params[:id])
    end 
end 