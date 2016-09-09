class RemoveDocumentoIdentificacionFromPersonas < ActiveRecord::Migration[5.0]
  def change
    remove_column :personas, :documento_identificacion, :string
    add_column :personas, :documento_identificacion, :integer
    add_column :personas, :tipo_documento, :string

  end
end
