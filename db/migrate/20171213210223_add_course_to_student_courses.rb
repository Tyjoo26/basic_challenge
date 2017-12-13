class AddCourseToStudentCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :student_courses, :course, foreign_key: true
  end
end
