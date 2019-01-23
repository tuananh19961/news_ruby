class PostsController < ApplicationController
before_action :set_post, only: [:show,:edit]

# GET /users
  # GET /users.json
  def index
    @posts = Post.joins(:category).order('posts.id ASC')
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

#   # GET /users/new
  def new
    @category = Category.all
    @post = Post.new
  end

  # GET /users/1/edit
  def edit
  end

 # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# POST /users
  # POST /users.json
  def create
    @post = Post.new(post_params)

    if  @post.save
      flash[:success] = "Thêm bài viết thành công!"
      redirect_to :action => 'new'
    else
      render :action => 'new'
    end

  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by(id: params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :category_id, :content,:image)
    end
end
