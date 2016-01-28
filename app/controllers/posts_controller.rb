class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  impressionist :actions=>[:admin,:index]

  def index
    @posts = Post.all.order("created_at DESC")
    @subscriber = Subscriber.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
        params[:youtubes]['link'].each do |a|
        @video = @post.youtubes.create!(:link => a)
        end
        flash[:notice] = "Post was successfully created"
        redirect_to post_path(@post)
    else 
      render :new
    end    
  end
 
  def show
    @youtube = @post.youtubes.all
    @post.impressionist_count(:filter=>:all)
  end

  def edit 
  end

  def admin
    @posts = Post.all.order("created_at DESC")
  end   

  def update
    if @post.update(post_params)
      flash[:notice] = "Post was successfully updated"
      redirect_to post_path(@post)
    else 
      render :edit
    end    
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post was successfully deleted"
    redirect_to admin_path
  end

  def find_post
    @post = Post.find(params[:id])
  end

private 

  def post_params
    params.require(:post).permit(:title, :name, :description, :content, :avatar)
  end
  
end