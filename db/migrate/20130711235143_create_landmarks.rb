class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|

      t.timestamps
    end
  end
end
