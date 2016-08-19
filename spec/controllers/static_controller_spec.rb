require 'rails_helper'

RSpec.describe StaticController, type: :controller do

  context '#index' do

    before(:each) do
      get :index
    end

    it 'should receive 200 response code' do
      expect(response.status).to eq(200)
    end

  end

end
