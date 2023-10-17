class BlogpostController < ApplicationController
    def index
        @blog_posts = Blogpost.all
    end
end