class GuiaMovimientosController < ApplicationController
  before_action :set_guia_movimiento, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /guia_movimientos or /guia_movimientos.json
  def index
    @guia_movimientos = GuiaMovimiento.all
  end

  # GET /guia_movimientos/1 or /guia_movimientos/1.json
  def show
  end

  # GET /guia_movimientos/new
  def new
    @guia_movimiento = GuiaMovimiento.new
    @users = User.all
    @unidads = Unidad.all

  end

  # GET /guia_movimientos/1/edit
  def edit
  end

  # POST /guia_movimientos or /guia_movimientos.json
  def create
    @guia_movimiento = GuiaMovimiento.new(guia_movimiento_params)

    respond_to do |format|
      if @guia_movimiento.save
        format.html { redirect_to guia_movimiento_url(@guia_movimiento), notice: "Guia movimiento was successfully created." }
        format.json { render :show, status: :created, location: @guia_movimiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guia_movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guia_movimientos/1 or /guia_movimientos/1.json
  def update
    respond_to do |format|
      if @guia_movimiento.update(guia_movimiento_params)
        format.html { redirect_to guia_movimiento_url(@guia_movimiento), notice: "Guia movimiento was successfully updated." }
        format.json { render :show, status: :ok, location: @guia_movimiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guia_movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guia_movimientos/1 or /guia_movimientos/1.json
  def destroy
    @guia_movimiento.destroy

    respond_to do |format|
      format.html { redirect_to guia_movimientos_url, notice: "Guia movimiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guia_movimiento
      @guia_movimiento = GuiaMovimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guia_movimiento_params
      params.require(:guia_movimiento).permit(:user_id, :nombre_receptor, :email_receptor, :unidad_receptor, :estado, :observacion, :guia_firmada)
    end
end
