class Course < ApplicationRecord
  validates :short_name, presence: true, length: { maximum: 5 }
  validates :name, presence: true, length: {minimum: 5, maximum: 50 }
  validates :description, presence: true, length: {minimum: 10, maximum: 100 }

  has_many :student_courses
  has_many :students, through: :student_courses
end