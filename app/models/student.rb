class Student < ApplicationRecord

  validates_presence_of :name

  has_many :addresses

  has_many :studentcourses
  has_many :students, through: :studentcourses
end
