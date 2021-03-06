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

    let(:product) { create(:product) }
    let(:feature) { create_list(:feature, 3) }

    before(:each) do; product.features << feature end

    it 'should return rating of 4 by default' do
      expect(subject.total_rating).to eq(4)
    end

    it 'should return a feature with rating' do
      expect(product.features.sample.rating_by_product(product.id)).to_not be_nil
    end

    it 'should calculate average number of feature ratings' do
      product.features << create(:feature, :with_rating)

      all_ratings = product.features.map do |feature|
        feature.rating_by_product(product.id)
      end

      expect(product.total_rating).to eq(
        all_ratings.inject(:+) / product.features.count
      )
    end

  end

end
