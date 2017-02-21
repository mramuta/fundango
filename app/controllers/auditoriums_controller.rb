class AuditoriumsController < ApplicationController
  def new
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new(auditorium_params)
    if @auditorium.save
      redirect_to root_path 
    else
      @errors = @auditorium.errors.full_messages
      render "new"
    end
  end

  def auditorium_params
    params.require(:auditorium).permit(:capacity)
  end
end
