class GestionUsersController < ApplicationController
  def home
  	@users = User.all
  end
end
