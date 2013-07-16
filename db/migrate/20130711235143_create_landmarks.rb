class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :location_id
      t.timestamps
    end
  end
end
