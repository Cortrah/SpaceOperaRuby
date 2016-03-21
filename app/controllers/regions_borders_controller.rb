class RegionsBordersController < ApplicationController
  before_action :set_regions_border, only: [:show, :edit, :update, :destroy]

  # GET /regions_borders
  # GET /regions_borders.json
  def index
    @regions_borders = RegionsBorder.all
  end

  # GET /regions_borders/1
  # GET /regions_borders/1.json
  def show
  end

  # GET /regions_borders/new
  def new
    @regions_border = RegionsBorder.new
  end

  # GET /regions_borders/1/edit
  def edit
  end

  # POST /regions_borders
  # POST /regions_borders.json
  def create
    @regions_border = RegionsBorder.new(regions_border_params)

    respond_to do |format|
      if @regions_border.save
        format.html { redirect_to @regions_border, notice: 'Regions border was successfully created.' }
        format.json { render :show, status: :created, location: @regions_border }
      else
        format.html { render :new }
        format.json { render json: @regions_border.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regions_borders/1
  # PATCH/PUT /regions_borders/1.json
  def update
    respond_to do |format|
      if @regions_border.update(regions_border_params)
        format.html { redirect_to @regions_border, notice: 'Regions border was successfully updated.' }
        format.json { render :show, status: :ok, location: @regions_border }
      else
        format.html { render :edit }
        format.json { render json: @regions_border.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regions_borders/1
  # DELETE /regions_borders/1.json
  def destroy
    @regions_border.destroy
    respond_to do |format|
      format.html { redirect_to regions_borders_url, notice: 'Regions border was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regions_border
      @regions_border = RegionsBorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regions_border_params
      params.require(:regions_border).permit(:name, :source_id, :sink_id, :border_type_id, :is_secret)
    end
end
