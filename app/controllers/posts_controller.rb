class PostsController < ApplicationController
  before_action :auth_user

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end


  def create
    @post = Post.create(params[:post].permit!)
    if @post.errors.any?
      flash.now[:notice] = @post.errors.values.to_sentence
      render :new
    else
      redirect_to action: :index
    end
  end

  def edit
    authorize Post, :update?
    @post = Post.find(params[:id])
  end

  def update

  end

  def destroy
  end


end
