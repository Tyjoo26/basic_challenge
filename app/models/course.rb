class Course < ApplicationRecord

  has_many :studentcourses
  has_many :students, through: :studentcourses
end
