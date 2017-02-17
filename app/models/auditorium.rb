class Auditorium < ApplicationRecord
	has_many :showtimes
	validates :capacity, presence: true
end
