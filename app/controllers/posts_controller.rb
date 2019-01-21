class PostsController < ApplicationController
before_action :set_post, only: [:show,:edit]

# GET /users
  # GET /users.json
#   def index
#     @posts = Post.all
#   end

  # GET /users/1
  # GET /users/1.json
  def show
  end

#   # GET /users/new
#   def new
#     @user = Post.new
#   end

  # GET /users/1/edit
  def edit
  end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def user_params
    #   params.require(:user).permit(:name, :email, :password)
    # end
end
