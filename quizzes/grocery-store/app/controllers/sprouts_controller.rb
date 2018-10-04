class SproutsController < ApplicationController
  before_action :set_sprout, only: [:show, :edit, :update, :destroy]

  # GET /sprouts
  # GET /sprouts.json
  def index
    @sprouts = Sprout.all
  end

  # GET /sprouts/1
  # GET /sprouts/1.json
  def show
  end

  # GET /sprouts/new
  def new
    @sprout = Sprout.new
  end

  # GET /sprouts/1/edit
  def edit
  end

  # POST /sprouts
  # POST /sprouts.json
  def create
    @sprout = Sprout.new(sprout_params)

    respond_to do |format|
      if @sprout.save
        format.html { redirect_to @sprout, notice: 'Sprout was successfully created.' }
        format.json { render :show, status: :created, location: @sprout }
      else
        format.html { render :new }
        format.json { render json: @sprout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprouts/1
  # PATCH/PUT /sprouts/1.json
  def update
    respond_to do |format|
      if @sprout.update(sprout_params)
        format.html { redirect_to @sprout, notice: 'Sprout was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprout }
      else
        format.html { render :edit }
        format.json { render json: @sprout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprouts/1
  # DELETE /sprouts/1.json
  def destroy
    @sprout.destroy
    respond_to do |format|
      format.html { redirect_to sprouts_url, notice: 'Sprout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprout
      @sprout = Sprout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprout_params
      params.require(:sprout).permit(:store, :department, :employee)
    end
end
