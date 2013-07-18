class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :city
      t.integer :user_id
      t.string :start
      t.string :end
      t.timestamps
    end
  end
end
