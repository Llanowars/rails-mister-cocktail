class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :destroy]

  def index
    # response.headers.delete('X-Frame-Options')
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
