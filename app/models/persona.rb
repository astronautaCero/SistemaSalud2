class Persona < ApplicationRecord
	before_save :minuscula_form
	include PersonasHelper
	has_many :InformacionContacts
	accepts_nested_attributes_for :InformacionContacts, allow_destroy: true

	belongs_to :users

	mount_uploader :avatar, AvatarUploader

	 validates :tipo_persona, presence: true
	 validates :tipo_documento, presence: true
	 validates :documento_identificacion, presence:true, numericality: { only_integer: true }, :uniqueness => true
	 validates :nombres, presence:true, length: { minimum: 4  }, :uniqueness => true
	 validates :apellidos, presence:true, length: { minimum: 4  }, :uniqueness => true
	 validates :sexo, presence:true
	 validates :lugar_nacimiento, presence:true
	 validates :fecha_nacimiento, presence:true
	 validates :poblacion, presence:true
	 validates :ocupacion, presence:true
	 validates :direccion, presence:true
	 validates :personacn, presence:true
	 validates :personaca, presence:true
	 validates :personacp, presence:true



end
