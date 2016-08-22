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
end
