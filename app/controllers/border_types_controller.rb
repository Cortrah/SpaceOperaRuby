class BorderTypesController < ApplicationController
  before_action :set_border_type, only: [:show, :edit, :update, :destroy]

  # GET /border_types
  # GET /border_types.json
  def index
    @border_types = BorderType.all
  end

  # GET /border_types/1
  # GET /border_types/1.json
  def show
  end

  # GET /border_types/new
  def new
    @border_type = BorderType.new
  end

  # GET /border_types/1/edit
  def edit
  end

  # POST /border_types
  # POST /border_types.json
  def create
    @border_type = BorderType.new(border_type_params)

    respond_to do |format|
      if @border_type.save
        format.html { redirect_to @border_type, notice: 'Border type was successfully created.' }
        format.json { render :show, status: :created, location: @border_type }
      else
        format.html { render :new }
        format.json { render json: @border_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /border_types/1
  # PATCH/PUT /border_types/1.json
  def update
    respond_to do |format|
      if @border_type.update(border_type_params)
        format.html { redirect_to @border_type, notice: 'Border type was successfully updated.' }
        format.json { render :show, status: :ok, location: @border_type }
      else
        format.html { render :edit }
        format.json { render json: @border_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /border_types/1
  # DELETE /border_types/1.json
  def destroy
    @border_type.destroy
    respond_to do |format|
      format.html { redirect_to border_types_url, notice: 'Border type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_border_type
      @border_type = BorderType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def border_type_params
      params.require(:border_type).permit(:name, :code, :description, :is_directional)
    end
end
