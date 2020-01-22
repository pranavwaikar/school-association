class Student < ActiveRecord::Base
  belongs_to :school
  has_one :laptop
  #  has_and_belongs_to_many :teachers
  has_many :periods
  has_many :teachers , :through => :periods
end
