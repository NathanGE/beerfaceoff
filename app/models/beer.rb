class Beer < ApplicationRecord
  def self.top_ranked_beers
    Beer.order(upvotes: :desc).first(5)
  end
end
