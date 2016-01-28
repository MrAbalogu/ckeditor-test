class YoutubesController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  end

  def create
    @youtube = @post.youtubes.create(youtube_params)
    flash[:notice] = "Youtube link has been created"
    redirect_to posts_path(@post)
  end

  def new
  end

  def show
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

  private 

  def youtube_params
  	params.require(:youtube).permit(:post_id, :link)
  end	
end
