class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  def create
    usuario = Usuario.new(usuario_params)
    email =params["email"]
    if Usuario.where(email: email).first == nil
      usuario.name = params["name"]
      usuario.phone = params["phone"]
      usuario.email = email
      usuario.createdAt = Date.today
      if usuario.save
        @usuario_estruct = OpenStruct.new
        @usuario_estruct.name  = usuario.name
        @usuario_estruct.phone = usuario.phone
        @usuario_estruct.email = usuario.email
        @usuario_estruct.id = usuario.id
        @usuario_estruct.createdAt = usuario.createdAt
        @usuario_estruct.save
        render json: {status: 'SUCCESS', message: 'Usuario creado con éxito!', data: @usuario_estruct}, status: :ok
      else
      render json: {status: 'ERROR', message: 'Error al guardar el usuario'}, status: :unprocessable_entity
      end
    else
      render json: {status: 'ERROR', message: 'Ya existe un usuario con este email'}, status: :unprocessable_entity

    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:name, :phone, :email, :createdAt)
    end
end
