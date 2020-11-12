class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    create_cocktail = Cocktail.find(params[:cocktail_id])
    dose = Dose.new(dose_params)
    dose.cocktail_id = create_cocktail.id
    dose.save

    redirect_to cocktails_path
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
