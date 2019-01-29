class WelcomeController < ApplicationController
  def index
    @new_posts = Post.includes(:category).order('posts.id ASC').last(2);
    @posts = Post.all
  end
end
