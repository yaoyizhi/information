class Admin::PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :require_is_admin
    layout'admin'
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to admin_posts_path
    end

    private

    def post_params
        params.require(:post).permit(:title, :description)
    end
end
