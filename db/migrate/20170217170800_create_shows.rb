class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
    	has_many :orders
			has_many :showtimes
      t.timestamps
    end
  end
end
