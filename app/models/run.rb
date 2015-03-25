class Run < ActiveRecord::Base
  attr_accessible :Carreras
  has_many :lists

end
