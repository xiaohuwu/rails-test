class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    user = User.new
    user.name = params[:user][:name]
    user.pic = params[:file]
    user.save
    logger.info "[u.avatar.url]#{user.pic.url}"
    logger.info "[u.avatar.url]#{user.pic.current_path}"
    #u.avatar.current_path
  end

  def new

  end
end
