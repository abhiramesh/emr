class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.string :title
      t.string :category
      t.integer :user_id
      t.timestamps
    end
    add_index :appointments, :user_id
  end
end
