require 'rails_helper'

RSpec.describe BrandsController, type: :controller do

  context 'index' do
    before(:each) do
      get :index
    end

    it ' returns 200 response code' do
      expect(response.status).to eq(200)
    end
  end

end
