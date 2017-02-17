class Showtime < ApplicationRecord
	belongs_to :show
	belongs_to :auditorium
	has_many :orders
	
	validates :show_id, :auditorium_id, :min_after_midnight, presence: true

	def min_to_time()
		min = read_attribute(:min_after_midnight)
		time_str = (min / 60).to_s + ':' + (min % 60).to_s
		if min % 60 < 10
			time_str.insert(-2,'0')
		end
		time_str
	end
end
