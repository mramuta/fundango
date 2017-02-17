class Showtime < ApplicationRecord
	belongs_to :show
	belongs_to :auditorium
	has_many :orders
	
	validates :show_id, :auditorium_id, :showtime, presence: true
end
