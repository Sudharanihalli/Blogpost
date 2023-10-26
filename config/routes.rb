Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

   resources :blog_posts
  # get  "/blog_posts/:new", to: "blog_posts#show", as: :new_blog_post
  # get  "/blog_posts/:id/:edit", to: "blog_posts#edit", as: :edit_post
  # patch  "/blog_posts/:id", to: "blog_post#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # post "/blog_posts/:id/epl-dit", to: "blog_posts#create", as: :blog_post[]
  # post "/blog_posts", to: "blog_posts#create", as: :blog_post

  # Defines the root path route ("/")
  root "blog_posts#index"
end
