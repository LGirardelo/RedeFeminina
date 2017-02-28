class TipocancersController < ApplicationController
  before_action :set_tipocancer, only: [:show, :edit, :update, :destroy]

  # GET /tipocancers
  # GET /tipocancers.json
  def index
    @tipocancers = Tipocancer.all
  end

  # GET /tipocancers/1
  # GET /tipocancers/1.json
  def show
  end

  # GET /tipocancers/new
  def new
    @tipocancer = Tipocancer.new
  end

  # GET /tipocancers/1/edit
  def edit
  end

  # POST /tipocancers
  # POST /tipocancers.json
  def create
    @tipocancer = Tipocancer.new(tipocancer_params)

    respond_to do |format|
      if @tipocancer.save
        format.html { redirect_to @tipocancer, notice: 'Tipocancer was successfully created.' }
        format.json { render :show, status: :created, location: @tipocancer }
      else
        format.html { render :new }
        format.json { render json: @tipocancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipocancers/1
  # PATCH/PUT /tipocancers/1.json
  def update
    respond_to do |format|
      if @tipocancer.update(tipocancer_params)
        format.html { redirect_to @tipocancer, notice: 'Tipocancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipocancer }
      else
        format.html { render :edit }
        format.json { render json: @tipocancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocancers/1
  # DELETE /tipocancers/1.json
  def destroy
    @tipocancer.destroy
    respond_to do |format|
      format.html { redirect_to tipocancers_url, notice: 'Tipocancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipocancer
      @tipocancer = Tipocancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipocancer_params
      params.require(:tipocancer).permit(:descricao, :nivelgravidade)
    end
end
