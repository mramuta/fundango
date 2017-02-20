class ShowsController < ApplicationController
	skip_before_action :require_login, only: :index
	def index
		@shows = Show.all
	end

  def new
    @show = Show.new
  end

  def create
    if @show.save
      redirect_to root_path 
    else
      @errors = @show.errors.full_messages
      render "new"
    end
  end
end
