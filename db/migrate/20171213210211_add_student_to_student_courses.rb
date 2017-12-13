class AddStudentToStudentCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :student_courses, :student, foreign_key: true
  end
end
