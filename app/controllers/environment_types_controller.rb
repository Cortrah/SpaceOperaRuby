class EnvironmentTypesController < ApplicationController
  before_action :set_environment_type, only: [:show, :edit, :update, :destroy]

  # GET /environment_types
  # GET /environment_types.json
  def index
    @environment_types = EnvironmentType.all
  end

  # GET /environment_types/1
  # GET /environment_types/1.json
  def show
  end

  # GET /environment_types/new
  def new
    @environment_type = EnvironmentType.new
  end

  # GET /environment_types/1/edit
  def edit
  end

  # POST /environment_types
  # POST /environment_types.json
  def create
    @environment_type = EnvironmentType.new(environment_type_params)

    respond_to do |format|
      if @environment_type.save
        format.html { redirect_to @environment_type, notice: 'Environment type was successfully created.' }
        format.json { render :show, status: :created, location: @environment_type }
      else
        format.html { render :new }
        format.json { render json: @environment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /environment_types/1
  # PATCH/PUT /environment_types/1.json
  def update
    respond_to do |format|
      if @environment_type.update(environment_type_params)
        format.html { redirect_to @environment_type, notice: 'Environment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @environment_type }
      else
        format.html { render :edit }
        format.json { render json: @environment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /environment_types/1
  # DELETE /environment_types/1.json
  def destroy
    @environment_type.destroy
    respond_to do |format|
      format.html { redirect_to environment_types_url, notice: 'Environment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_environment_type
      @environment_type = EnvironmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def environment_type_params
      params.require(:environment_type).permit(:name, :code, :description)
    end
end
