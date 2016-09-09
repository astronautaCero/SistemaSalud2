class PersonasController < ApplicationController
    load_and_authorize_resource
     before_action :authenticate_user!
 before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def index
  	@personas = Persona.all
  end


  def show

  end

  def new
  	@persona = Persona.new
  end


  def edit

  end

  def create 
  	@persona = current_user.Personas.new(persona_params)

  	respond_to do |format|
  		if @persona.save
  			format.html {redirect_to @persona, notice: 'Persona Creada Correctamente.'}
        format.json { render :show, status: :created, location: @persona }
  		else 
  			format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
  		end
  	end
  end 

  def update 
  	respond_to do |format|
  		if @persona.update(persona_params)
  			format.html { redirect_to @persona, notice: 'Usuario Actualizada Correctamente' }
        format.json { render :show, status: :ok, location: @persona }
  		else
  			format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def destroy
  	@persona.destroy
  	respond_to do |format|
  		format.html { redirect_to personas_url, notice: 'Usuario Borrado Exitosamente' }
      format.json { head :no_content }
  	end
  end

  private 

  def set_persona
  	@persona = Persona.find(params[:id])
  end

  def persona_params
    params.require(:persona).permit(:tipo_persona, :tipo_documento, :documento_identificacion, :nombres, :apellidos, :sexo, :lugar_nacimiento, :fecha_nacimiento, :poblacion, :ocupacion, :direccion, :foto, :biometria, :firma, :personacn, :personaca, :personacp, :user_id,  :avatar,  InformacionContacts_attributes: [:id, :telefono, :celular, :email, :persona_id, :_destroy])
  end


end
