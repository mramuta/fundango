class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|	
    	t.integer :showtime_id, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
