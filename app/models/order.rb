class Order < ApplicationRecord
	belongs_to :showtime

	validates :showtime_id, :name, :email, presence: true
end
