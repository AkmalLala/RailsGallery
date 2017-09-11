class PicGalsController < ApplicationController
  before_action :set_pic_gal, only: [:show, :edit, :update, :destroy]

  # GET /pic_gals
  # GET /pic_gals.json
  def index
    @pic_gals = PicGal.all
  end

  # GET /pic_gals/1
  # GET /pic_gals/1.json
  def show
  end

  # GET /pic_gals/new
  def new
    @pic_gal = PicGal.new
  end

  # GET /pic_gals/1/edit
  def edit
  end

  # POST /pic_gals
  # POST /pic_gals.json
  def create
    @pic_gal = PicGal.new(pic_gal_params)

    respond_to do |format|
      if @pic_gal.save
        format.html { redirect_to @pic_gal, notice: 'Pic gal was successfully created.' }
        format.json { render :show, status: :created, location: @pic_gal }
      else
        format.html { render :new }
        format.json { render json: @pic_gal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pic_gals/1
  # PATCH/PUT /pic_gals/1.json
  def update
    respond_to do |format|
      if @pic_gal.update(pic_gal_params)
        format.html { redirect_to @pic_gal, notice: 'Pic gal was successfully updated.' }
        format.json { render :show, status: :ok, location: @pic_gal }
      else
        format.html { render :edit }
        format.json { render json: @pic_gal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pic_gals/1
  # DELETE /pic_gals/1.json
  def destroy
    @pic_gal.destroy
    respond_to do |format|
      format.html { redirect_to pic_gals_url, notice: 'Pic gal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic_gal
      @pic_gal = PicGal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_gal_params
      params.require(:pic_gal).permit(:title, :img, :notes)
    end
end
