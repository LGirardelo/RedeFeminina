class TiposervicosController < ApplicationController
  before_action :set_tiposervico, only: [:show, :edit, :update, :destroy]

  # GET /tiposervicos
  # GET /tiposervicos.json
  def index
    @tiposervicos = Tiposervico.all
  end

  # GET /tiposervicos/1
  # GET /tiposervicos/1.json
  def show
  end

  # GET /tiposervicos/new
  def new
    @tiposervico = Tiposervico.new
  end

  # GET /tiposervicos/1/edit
  def edit
  end

  # POST /tiposervicos
  # POST /tiposervicos.json
  def create
    @tiposervico = Tiposervico.new(tiposervico_params)

    respond_to do |format|
      if @tiposervico.save
        format.html { redirect_to @tiposervico, notice: 'Tiposervico was successfully created.' }
        format.json { render :show, status: :created, location: @tiposervico }
      else
        format.html { render :new }
        format.json { render json: @tiposervico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiposervicos/1
  # PATCH/PUT /tiposervicos/1.json
  def update
    respond_to do |format|
      if @tiposervico.update(tiposervico_params)
        format.html { redirect_to @tiposervico, notice: 'Tiposervico was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiposervico }
      else
        format.html { render :edit }
        format.json { render json: @tiposervico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiposervicos/1
  # DELETE /tiposervicos/1.json
  def destroy
    @tiposervico.destroy
    respond_to do |format|
      format.html { redirect_to tiposervicos_url, notice: 'Tiposervico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiposervico
      @tiposervico = Tiposervico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiposervico_params
      params.require(:tiposervico).permit(:descricao)
    end
end
