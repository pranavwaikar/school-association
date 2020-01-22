class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :starts_at
      t.string :ends_at
      t.references :teacher, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
