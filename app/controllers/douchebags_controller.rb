class DouchebagsController < ApplicationController
  before_action :set_douchebag, only: [:show, :edit, :update, :destroy]

  # GET /douchebags
  # GET /douchebags.json
  def index
    @douchebags = Douchebag.all
  end

  # GET /douchebags/1
  # GET /douchebags/1.json
  def show
  end

  # GET /douchebags/new
  def new
    @douchebag = Douchebag.new
  end

  # GET /douchebags/1/edit
  def edit
  end

  # POST /douchebags
  # POST /douchebags.json
  def create
    @douchebag = Douchebag.new(douchebag_params)

    respond_to do |format|
      if @douchebag.save
        format.html { redirect_to @douchebag, notice: 'Douchebag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @douchebag }
      else
        format.html { render action: 'new' }
        format.json { render json: @douchebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /douchebags/1
  # PATCH/PUT /douchebags/1.json
  def update
    respond_to do |format|
      if @douchebag.update(douchebag_params)
        format.html { redirect_to @douchebag, notice: 'Douchebag was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @douchebag }
      else
        format.html { render action: 'edit' }
        format.json { render json: @douchebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /douchebags/1
  # DELETE /douchebags/1.json
  def destroy
    @douchebag.destroy
    respond_to do |format|
      format.html { redirect_to douchebags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_douchebag
      @douchebag = Douchebag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def douchebag_params
      params.require(:douchebag).permit(:name, :how_big)
    end
end
