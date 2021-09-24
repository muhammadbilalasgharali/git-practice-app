class UnisController < ApplicationController
  before_action :set_uni, only: %i[ show edit update destroy ]

  # GET /unis or /unis.json
  def index
    @unis = Uni.all
  end

  # GET /unis/1 or /unis/1.json
  def show
  end

  # GET /unis/new
  def new
    @uni = Uni.new
  end

  # GET /unis/1/edit
  def edit
  end

  # POST /unis or /unis.json
  def create
    @uni = Uni.new(uni_params)

    respond_to do |format|
      if @uni.save
        format.html { redirect_to @uni, notice: "Uni was successfully created." }
        format.json { render :show, status: :created, location: @uni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unis/1 or /unis/1.json
  def update
    respond_to do |format|
      if @uni.update(uni_params)
        format.html { redirect_to @uni, notice: "Uni was successfully updated." }
        format.json { render :show, status: :ok, location: @uni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unis/1 or /unis/1.json
  def destroy
    @uni.destroy
    respond_to do |format|
      format.html { redirect_to unis_url, notice: "Uni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uni
      @uni = Uni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uni_params
      params.require(:uni).permit(:name)
    end
end
