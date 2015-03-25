class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :Carreras

      t.timestamps
    end
  end
end
