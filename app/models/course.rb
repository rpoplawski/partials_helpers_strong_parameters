class Course < ActiveRecord::Base
  has_many :enrollments
  belongs_to :school
  has_many :students, through: :enrollments
end
