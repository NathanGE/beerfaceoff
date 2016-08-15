class AddBrewerToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :brewer, :string
  end
end
