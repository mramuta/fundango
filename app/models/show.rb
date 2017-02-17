class Show < ApplicationRecord
	 validates :title, :runtime, :image_url, :description, presence: true
end
