class CreateInformacionContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :informacion_contacts do |t|
      t.string :telefono
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end
