class ShowtimesController < ApplicationController
  def new
    @showtime = Showtime.new
    @auditorium_options = Auditorium.all.map do |auditorium|
      ['Auditorium '+ auditorium.id.to_s,auditorium.id]
    end
    @show_options = Show.all.map do |show|
      ['Show '+ show.title,show.id]
    end
  end

  def create
    @showtime = Showtime.new(showtime_params)
    if @showtime.save
      redirect_to root_path 
    else
      @errors = @showtime.errors.full_messages
      render "new"
    end
  end

  def showtime_params
    params.require(:showtime).permit(:auditorium_id,:show_id,:min_after_midnight)
  end
end
