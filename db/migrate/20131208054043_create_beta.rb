class CreateBeta < ActiveRecord::Migration
  def change
    create_table :beta do |t|
      t.string :email
      t.string :ip
      t.timestamps
    end
  end
end
