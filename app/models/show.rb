class Show < ApplicationRecord
	has_many :showtimes

	validates :title, :runtime, :image_url, :description, presence: true

	def get_times
		self.showtimes.where("min_after_midnight > ?", Time.now.seconds_since_midnight / 60).order(:min_after_midnight).map do |showtime|
			showtime.min_to_time()
		end
	end
end
