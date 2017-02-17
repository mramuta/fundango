class CreateShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
			t.integer :show_id, null: false
      t.integer :auditorium_id, null: false
      t.integer :min_after_midnight, null: false
      t.timestamps
    end
  end
end
