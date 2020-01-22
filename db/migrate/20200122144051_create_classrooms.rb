class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :location
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
