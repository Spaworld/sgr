require 'rails_helper'

RSpec.describe Product, type: :model do

  context 'validations' do

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:brands) }
    it { should have_and_belong_to_many(:photos) }
    it { should have_many(:features).through(:product_features) }

  end

  context 'callbacks' do
    before(:each) do
      @product = create(:product, :with_photos)
    end

    it 'should call .clear on photos before_destroy' do
      expect(@product.photos).to receive(:clear)
      @product.destroy
    end

  end

  context 'features' do

    let(:product)  { create(:product, :with_rated_features) }

    it 'should load existing list of features' do
      expect(product.features).to_not be_empty
    end

    it 'should have rated features' do
      expect(product.features.first.ratings.count).to eq(1)
    end

  end

end
