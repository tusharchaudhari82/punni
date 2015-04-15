class TauntsController < ApplicationController
  before_action :set_taunt, only: [:show, :edit, :update, :destroy]

  # GET /taunts
  # GET /taunts.json
  def index
    @taunts = Taunt.all
  end

  # GET /taunts/1
  # GET /taunts/1.json
  def show
  end

  # GET /taunts/new
  def new
    @taunt = Taunt.new
  end

  # GET /taunts/1/edit
  def edit
  end

  # POST /taunts
  # POST /taunts.json
  def create
    @taunt = Taunt.new(taunt_params)

    respond_to do |format|
      if @taunt.save
        format.html { redirect_to @taunt, notice: 'Taunt was successfully created.' }
        format.json { render :show, status: :created, location: @taunt }
      else
        format.html { render :new }
        format.json { render json: @taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taunts/1
  # PATCH/PUT /taunts/1.json
  def update
    respond_to do |format|
      if @taunt.update(taunt_params)
        format.html { redirect_to @taunt, notice: 'Taunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @taunt }
      else
        format.html { render :edit }
        format.json { render json: @taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taunts/1
  # DELETE /taunts/1.json
  def destroy
    @taunt.destroy
    respond_to do |format|
      format.html { redirect_to taunts_url, notice: 'Taunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taunt
      @taunt = Taunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taunt_params
      params.require(:taunt).permit(:name, :content)
    end
end
