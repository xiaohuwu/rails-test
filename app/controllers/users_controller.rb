class UsersController < ApplicationController
  before_action :auth_user

  def create
    @user = User.create(params[:user].permit!)

    if @user.errors.any?
      flash.now[:notice] = @user.errors.values.to_sentence
      render :new
    else
      redirect_to action: :index
    end
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

end
