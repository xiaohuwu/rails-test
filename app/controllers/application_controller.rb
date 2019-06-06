class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected
  def auth_user
    if !logged_in?
      redirect_to user_sessions_new_path
    end
  end


  private
  def user_not_authorized
    flash.now[:notice] = "You are not authorized to perform this action."
    redirect_to(user_sessions_new_path)
  end


end
