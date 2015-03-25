class CreateStarts < ActiveRecord::Migration
  def change
    create_table :starts do |t|
      t.string :Nombre
      t.integer :Cuenta
      t.integer :Telefono
      t.string :Carrera
      t.string :Hora
      t.date :fecha
      t.string :Estado

      t.timestamps
    end
  end
end
