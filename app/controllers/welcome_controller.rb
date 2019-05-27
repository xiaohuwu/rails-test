class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # ?numbers[]=1&numbers[]=2&numbers[]=3 pass array
    # user[id]=1&user[name]=Nathan     pass object
    # users[][id]=1&users[][name]=Nathan&users[][id]=2&users[][name]=Emma   Complex Objects
    # logger.info "[param]#{params[:numbers]}"
    # logger.info "[param]#{params[:user]}"
    # logger.info "[param]#{params[:users][0]}"

    HardWorker.perform_async(params[:name], params[:age])

  end

  def new

  end

  def create
    # 观察 params 传递的 param 是嵌套的
    logger.info "[param]#{params}"
  end

end
