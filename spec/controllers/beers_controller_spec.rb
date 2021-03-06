require 'rails_helper'

RSpec.describe BeersController, type: :controller do
  describe '#index' do
    it 'successfully shows the page' do
      get :index

      expect(response).to have_http_status :success
    end
  end

  describe '#new' do
    it 'successfully shows the new form' do
      get :new

      expect(response).to have_http_status :success
    end
  end

  describe '#create' do
    it 'successfully adds a beer to the database' do
      previous_beer_count = Beer.count
      
      create_beer

      expect(Beer.count).to eq(previous_beer_count + 1)
    end

    it 'successfully redirects to the beer page' do
      create_beer
      beer = Beer.find_by(name: 'Create Beer')

      expect(response).to redirect_to beer_path(beer)
    end

    def create_beer
      post :create, beer: {
        name: 'Create Beer',
        brewer: 'Create Brewer',
        abv: 5,
        ibu: 30,
        upvotes: 10
      }
    end
  end

  describe '#delete' do
    it 'successfully removes a beer from the database' do
      beer = create(:beer)

      delete :destroy, id: beer.id

      expect(Beer.count).to eq 0
    end

    it 'successfully redirects to the homepage' do
      beer = create(:beer)

      delete :destroy, id: beer.id

      expect(response).to redirect_to root_path
    end
  end
end
