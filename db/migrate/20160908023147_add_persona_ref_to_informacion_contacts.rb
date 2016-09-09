class AddPersonaRefToInformacionContacts < ActiveRecord::Migration[5.0]
  def change
    add_reference :informacion_contacts, :persona, foreign_key: true
  end
end
