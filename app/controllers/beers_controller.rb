class BeersController < ApplicationController
  def index
    @beers = Beer.top_ranked_beers
  end

  def new
    @beer = Beer.new
  end
end
