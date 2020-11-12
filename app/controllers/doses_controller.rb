class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(cocktail_id: @cocktail.id)
  end

  def create
    @dose = Dose.new

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
