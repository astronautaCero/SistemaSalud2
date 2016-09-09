class AddAttrToPersonas < ActiveRecord::Migration[5.0]
  def change
  	    add_column :personas, :personacn, :string
  	    add_column :personas, :personaca, :string
  	    add_column :personas, :personacp, :string
  end
end
