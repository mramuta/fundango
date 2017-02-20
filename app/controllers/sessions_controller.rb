class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new,:create]
  def create
    @admin = Admin.find_by(username: params[:sessions][:username])
    if @admin && @admin.authenticate(params[:sessions][:password])
      session[:admin_id] = @admin.id
      redirect_to root_path
    else
      @errors = ['Invalid combination']
      render "new"
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end