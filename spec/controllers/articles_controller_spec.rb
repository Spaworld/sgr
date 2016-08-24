require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  context '#index' do

    before(:each) do
      get :index
    end

    it 'should return 200 response code' do
      expect(response.status).to eq(200)
    end

  end

end
