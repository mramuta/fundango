class Auditorium < ApplicationRecord
	validates :capacity, presence: true
end
