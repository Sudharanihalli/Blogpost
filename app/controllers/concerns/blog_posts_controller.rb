class BlogpostController < ApplicationController
    def index
        @blog_posts = Blogpost.all
    end

    def show
        @blog_post = Blogpost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
end