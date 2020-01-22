class Teacher < ActiveRecord::Base
  belongs_to :school
  # has_and_belongs_to_many :students
  has_many :periods
  has_many :students , :through => :periods
end
