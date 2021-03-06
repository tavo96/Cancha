class StartsController < ApplicationController
  before_action :set_start, only: [:show, :edit, :update, :destroy]

  # GET /starts
  # GET /starts.json
  def index
    @starts = Start.all
  end

  # GET /starts/1
  # GET /starts/1.json
  def show
  end

  # GET /starts/new
  def new
    @start = Start.new
  end

  # GET /starts/1/edit
  def edit
  end

  # POST /starts
  # POST /starts.json
  def create
    @start = Start.new(start_params)
    @start.Estado="pendiente"
    respond_to do |format|
      if
       @start.save
        format.html { redirect_to @start, notice: 'Reservacion Fue Creada Con exito.' }
        format.json { render action: 'Mostrar', status: :created, location: @start }
      else
        format.html { render action: 'Nuevo' }
        format.json { render json: @start.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starts/1
  # PATCH/PUT /starts/1.json
  def update
    respond_to do |format|
      if @start.update(start_params)
        format.html { redirect_to @start, notice: 'Reservacion Fue actualizada con exito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'Editar' }
        format.json { render json: @start.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starts/1
  # DELETE /starts/1.json
  def destroy
    @start.destroy
    respond_to do |format|
      format.html { redirect_to starts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start
      @start = Start.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_params
      params.require(:start).permit(:Nombre, :Cuenta, :Telefono, :hora, :carrera, :fecha, :Estado)
    end
end
