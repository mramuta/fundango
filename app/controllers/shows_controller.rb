class ShowsController < ApplicationController
	def index
		@shows = Show.all
		# @showtimes = Show.all.showtimes.where("showtime > ?", Time.now.seconds_since_midnight / 60)
		# p @showtimes
		p @shows[1].showtimes[0].min_to_time
	end
end
