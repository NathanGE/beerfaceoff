module Features
   def create_beers_with_upvotes
    create(:beer, name: 'beer1', brewer: 'brewer1', abv: 5.0, ibu: 30, upvotes: 100)
    create(:beer, name: 'beer2', brewer: 'brewer2', abv: 5.0, ibu: 30, upvotes: 50)
    create(:beer, name: 'beer3', brewer: 'brewer3', abv: 5.0, ibu: 30, upvotes: 40)
    create(:beer, name: 'beer4', brewer: 'brewer4', abv: 5.0, ibu: 30, upvotes: 90)
    create(:beer, name: 'beer5', brewer: 'brewer5', abv: 5.0, ibu: 30, upvotes: 80)
    create(:beer, name: 'beer6', brewer: 'brewer6', abv: 5.0, ibu: 30, upvotes: 70)
    create(:beer, name: 'beer7', brewer: 'brewer7', abv: 5.0, ibu: 30, upvotes: 60)
  end
end