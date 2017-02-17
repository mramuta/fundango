class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
    	t.string :title, null: false
      t.text :description, null: false
      t.string :image_url, null: false
      t.integer :runtime, null: false
      t.timestamps
    end
  end
end
