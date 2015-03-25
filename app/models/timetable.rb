class Timetable < ActiveRecord::Base
  attr_accessible :name
  has_many :lists

end
