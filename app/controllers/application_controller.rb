class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
 	
 	def current_user
    @current_user ||= Admin.find_by(id: session[:admin_id])
  end

  def logged_in?
    current_user != nil
  end

  private
 
  def require_login
    unless logged_in?
      redirect_to root_path
    end
  end
end
