class Start < ActiveRecord::Base
 attr_accessible :Nombre, :Cuenta, :Telefono, :Carrera, :Hora, :fecha, :Estado
 belongs_to :timetable
 belongs_to :run
 

 

end
