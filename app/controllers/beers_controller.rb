class BeersController < ApplicationController
  def index
    @beers = Beer.top_ranked_beers
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.save
    redirect_to @beer
  end

  def show
    @beer = Beer.find_by_id(params[:id])
  end

  def destroy
    @beer = Beer.find_by_id(params[:id])
    @beer.delete
    redirect_to root_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brewer, :ibu, :abv)
  end
end
