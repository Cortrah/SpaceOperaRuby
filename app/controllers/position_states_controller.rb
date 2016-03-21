class PositionStatesController < ApplicationController
  before_action :set_position_state, only: [:show, :edit, :update, :destroy]

  # GET /position_states
  # GET /position_states.json
  def index
    @position_states = PositionState.all
  end

  # GET /position_states/1
  # GET /position_states/1.json
  def show
  end

  # GET /position_states/new
  def new
    @position_state = PositionState.new
  end

  # GET /position_states/1/edit
  def edit
  end

  # POST /position_states
  # POST /position_states.json
  def create
    @position_state = PositionState.new(position_state_params)

    respond_to do |format|
      if @position_state.save
        format.html { redirect_to @position_state, notice: 'Position state was successfully created.' }
        format.json { render :show, status: :created, location: @position_state }
      else
        format.html { render :new }
        format.json { render json: @position_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_states/1
  # PATCH/PUT /position_states/1.json
  def update
    respond_to do |format|
      if @position_state.update(position_state_params)
        format.html { redirect_to @position_state, notice: 'Position state was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_state }
      else
        format.html { render :edit }
        format.json { render json: @position_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_states/1
  # DELETE /position_states/1.json
  def destroy
    @position_state.destroy
    respond_to do |format|
      format.html { redirect_to position_states_url, notice: 'Position state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_state
      @position_state = PositionState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_state_params
      params.require(:position_state).permit(:name, :position_id, :turn_id, :score, :trade_value, :money_income, :materials_income, :research_income, :saved_money, :saved_materials, :saved_research)
    end
end
