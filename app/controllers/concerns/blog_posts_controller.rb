class BlogpostController < ApplicationController
    def index
        @blog_posts = Blogpost.all
    end

    def show
        @blog_post = Blogpost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
end

def new
    @blog_post = Blogpost.new
end

def create
    @blog_post = Blogpost.new(blog_post_param)
    @blog_post.save
    redirect_to @blog_post
else
    render :new, status: :unprocessable_entity
end
end

private

def blog_post_params
    params.require(:blog_post).permit(:title, :body)
end
end  