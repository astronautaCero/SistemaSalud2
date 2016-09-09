class RemoveTelefonoFrominformacionContacts < ActiveRecord::Migration[5.0]
  def change
  	    remove_column :informacion_contacts, :telefono, :string
  	    remove_column :informacion_contacts, :celular, :string
  	    add_column :informacion_contacts, :telefono, :integer
  	    add_column :informacion_contacts, :celular, :integer
  end
end
