class AddUserIdToPersonas < ActiveRecord::Migration[5.0]
  def change
    add_reference :personas, :user, foreign_key: true
  end
end
