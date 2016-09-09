class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :tipo_persona
      t.string :documento_identificacion
      t.string :nombres
      t.string :apellidos
      t.string :sexo
      t.string :lugar_nacimiento
      t.datetime :fecha_nacimiento
      t.string :poblacion
      t.string :ocupacion
      t.string :direccion
      t.string :foto
      t.string :biometria
      t.string :firma

      t.timestamps
    end
  end
end
