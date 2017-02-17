class Showtime < ApplicationRecord
	validates :show_id, :auditorium_id, :showtime, presence: true
end
