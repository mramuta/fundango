class AuditoriumsController < ApplicationController
  def new
    @auditorium = Auidtorium.new
  end

  def create
    if @auditorium.save
      redirect_to root_path 
    else
      @errors = @auditorium.errors.full_messages
      render "new"
    end
  end
end
