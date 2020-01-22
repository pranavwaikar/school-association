class AddStudentIdToLaptop < ActiveRecord::Migration
  def change
    add_column :laptops , :student_id , :integer
  end
end
