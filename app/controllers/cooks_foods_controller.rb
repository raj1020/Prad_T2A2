class CooksFoodsController < ApplicationController
  before_action :set_cooks_food, only: [:show, :edit, :update, :destroy]

  # GET /cooks_foods
  # GET /cooks_foods.json
  def index
    @cooks_foods = CooksFood.all
  end

  # GET /cooks_foods/1
  # GET /cooks_foods/1.json
  def show
  end

  # GET /cooks_foods/new
  def new
    @cooks_food = CooksFood.new
  end

  # GET /cooks_foods/1/edit
  def edit
  end

  # POST /cooks_foods
  # POST /cooks_foods.json
  def create
    @cooks_food = CooksFood.new(cooks_food_params)

    respond_to do |format|
      if @cooks_food.save
        format.html { redirect_to @cooks_food, notice: 'Cooks food was successfully created.' }
        format.json { render :show, status: :created, location: @cooks_food }
      else
        format.html { render :new }
        format.json { render json: @cooks_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooks_foods/1
  # PATCH/PUT /cooks_foods/1.json
  def update
    respond_to do |format|
      if @cooks_food.update(cooks_food_params)
        format.html { redirect_to @cooks_food, notice: 'Cooks food was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooks_food }
      else
        format.html { render :edit }
        format.json { render json: @cooks_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooks_foods/1
  # DELETE /cooks_foods/1.json
  def destroy
    @cooks_food.destroy
    respond_to do |format|
      format.html { redirect_to cooks_foods_url, notice: 'Cooks food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooks_food
      @cooks_food = CooksFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooks_food_params
      params.require(:cooks_food).permit(:cook_id, :food_id, :price)
    end
end
