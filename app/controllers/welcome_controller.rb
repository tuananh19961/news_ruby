class WelcomeController < ApplicationController
  def index
    @category = Category.all
    @new_posts = Post.joins(:category).order('posts.id ASC').last(2);
    @posts = Post.all
  end
end
