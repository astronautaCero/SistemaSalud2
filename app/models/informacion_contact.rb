class InformacionContact < ApplicationRecord
	belongs_to :persona

	validates :telefono, presence: true, numericality: { only_integer: true } 
	validates :celular, presence: true, numericality: { only_integer: true },  length: { minimum: 4  }
	
		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }, :uniqueness => true

end
