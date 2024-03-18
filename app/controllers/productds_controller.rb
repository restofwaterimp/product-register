class ProductdsController < ApplicationController
  before_action :set_productd, only: %i[ show edit update destroy ]

  # GET /productds or /productds.json
  def index
    @productds = Productd.all
  end

  # GET /productds/1 or /productds/1.json
  def show
  end

  # GET /productds/new
  def new
    @productd = Productd.new
  end

  # GET /productds/1/edit
  def edit
  end

  # POST /productds or /productds.json
  def create
    @productd = Productd.new(productd_params)

    respond_to do |format|
      if @productd.save
        format.html { redirect_to productd_url(@productd), notice: "Productd was successfully created." }
        format.json { render :show, status: :created, location: @productd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productds/1 or /productds/1.json
  def update
    respond_to do |format|
      if @productd.update(productd_params)
        format.html { redirect_to productd_url(@productd), notice: "Productd was successfully updated." }
        format.json { render :show, status: :ok, location: @productd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productds/1 or /productds/1.json
  def destroy
    @productd.destroy

    respond_to do |format|
      format.html { redirect_to productds_url, notice: "Productd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productd
      @productd = Productd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productd_params
      params.require(:productd).permit(:name, :price, :vendor)
    end
end
