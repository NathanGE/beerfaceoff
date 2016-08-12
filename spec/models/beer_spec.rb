require 'rails_helper'

RSpec.describe Beer, type: :model do
  describe '#top_ranked_beers' do
    it 'returns the top 5 highest upvoted beers' do
      create_beers_with_upvotes

      result = Beer.top_ranked_beers

      expect(result.map(&:name)).to eq %w(beer1 beer4 beer5 beer6 beer7)
    end
  end

  def create_beers_with_upvotes
    create(:beer, name: 'beer1', abv: 5.0, ibu: 30, upvotes: 100)
    create(:beer, name: 'beer2', abv: 5.0, ibu: 30, upvotes: 50)
    create(:beer, name: 'beer3', abv: 5.0, ibu: 30, upvotes: 40)
    create(:beer, name: 'beer4', abv: 5.0, ibu: 30, upvotes: 90)
    create(:beer, name: 'beer5', abv: 5.0, ibu: 30, upvotes: 80)
    create(:beer, name: 'beer6', abv: 5.0, ibu: 30, upvotes: 70)
    create(:beer, name: 'beer7', abv: 5.0, ibu: 30, upvotes: 60)
  end
end
