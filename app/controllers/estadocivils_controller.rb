class EstadocivilsController < ApplicationController
  before_action :set_estadocivil, only: [:show, :edit, :update, :destroy]

  # GET /estadocivils
  # GET /estadocivils.json
  def index
    @estadocivils = Estadocivil.all
  end

  # GET /estadocivils/1
  # GET /estadocivils/1.json
  def show
  end

  # GET /estadocivils/new
  def new
    @estadocivil = Estadocivil.new
  end

  # GET /estadocivils/1/edit
  def edit
  end

  # POST /estadocivils
  # POST /estadocivils.json
  def create
    @estadocivil = Estadocivil.new(estadocivil_params)

    respond_to do |format|
      if @estadocivil.save
        format.html { redirect_to @estadocivil, notice: 'Estadocivil was successfully created.' }
        format.json { render :show, status: :created, location: @estadocivil }
      else
        format.html { render :new }
        format.json { render json: @estadocivil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadocivils/1
  # PATCH/PUT /estadocivils/1.json
  def update
    respond_to do |format|
      if @estadocivil.update(estadocivil_params)
        format.html { redirect_to @estadocivil, notice: 'Estadocivil was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadocivil }
      else
        format.html { render :edit }
        format.json { render json: @estadocivil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadocivils/1
  # DELETE /estadocivils/1.json
  def destroy
    @estadocivil.destroy
    respond_to do |format|
      format.html { redirect_to estadocivils_url, notice: 'Estadocivil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadocivil
      @estadocivil = Estadocivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadocivil_params
      params.require(:estadocivil).permit(:descricao)
    end
end
