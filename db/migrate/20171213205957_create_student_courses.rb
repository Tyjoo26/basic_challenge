class CreateStudentCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_courses do |t|

      t.timestamps
    end
  end
end
