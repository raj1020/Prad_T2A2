class EatersController < ApplicationController
  before_action :set_eater, only: [:show, :edit, :update, :destroy]

  # GET /eaters
  # GET /eaters.json
  def index
    @eaters = Eater.all
  end

  # GET /eaters/1
  # GET /eaters/1.json
  def show
  end

  # GET /eaters/new
  def new
    @eater = Eater.new
  end

  # GET /eaters/1/edit
  def edit
  end

  # POST /eaters
  # POST /eaters.json
  def create
    @eater = Eater.new(eater_params)

    respond_to do |format|
      if @eater.save
        format.html { redirect_to @eater, notice: 'Eater was successfully created.' }
        format.json { render :show, status: :created, location: @eater }
      else
        format.html { render :new }
        format.json { render json: @eater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eaters/1
  # PATCH/PUT /eaters/1.json
  def update
    respond_to do |format|
      if @eater.update(eater_params)
        format.html { redirect_to @eater, notice: 'Eater was successfully updated.' }
        format.json { render :show, status: :ok, location: @eater }
      else
        format.html { render :edit }
        format.json { render json: @eater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eaters/1
  # DELETE /eaters/1.json
  def destroy
    @eater.destroy
    respond_to do |format|
      format.html { redirect_to eaters_url, notice: 'Eater was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eater
      @eater = Eater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eater_params
      params.require(:eater).permit(:name, :email, :phone, :delivery_address, :notes)
    end
end
