class Show < ApplicationRecord
	has_many :showtimes

	validates :title, :runtime, :image_url, :description, presence: true

	def get_times
		self.showtimes.map do |showtime|
			showtime.min_to_time()
		end
	end
end
