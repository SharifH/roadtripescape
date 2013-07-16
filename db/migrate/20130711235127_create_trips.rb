class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :city
      t.integer :user_ids
      t.timestamps
    end
  end
end
