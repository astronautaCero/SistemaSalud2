class RemoveFechaNacimientoFromPersonas < ActiveRecord::Migration[5.0]
  def change
    remove_column :personas, :fecha_nacimiento, :datetime
    add_column :personas, :fecha_nacimiento, :date
  end
end
