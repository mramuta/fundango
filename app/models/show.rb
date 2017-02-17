class Show < ApplicationRecord
	has_many :showtimes

	validates :title, :runtime, :image_url, :description, presence: true
end
