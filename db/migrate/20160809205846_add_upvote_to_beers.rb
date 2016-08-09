class AddUpvoteToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :upvotes, :integer
  end
end
