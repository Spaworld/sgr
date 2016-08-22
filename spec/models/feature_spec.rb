require 'rails_helper'

RSpec.describe Feature, type: :model do

    context 'validations' do

      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:description) }

    end

    context 'associations' do

      it { should have_and_belong_to_many(:photos) }
      it { should have_many(:products).through(:product_features) }

    end

    context 'rating' do

      let(:product) { create(:product) }
      let(:feature) { create(:feature) }

      it 'should respond_to rating' do
        expect(subject).to respond_to(:rating_by_product)
      end

      it 'should return the default rating of 4' do
        product.features << feature
        expect(product.features.last.rating_by_product(product.id)).to eq(4)
      end

      it 'should update product.feature.rating' do
        product.features << feature
        product.features.last.update_rating(product.id, 3.33)
        expect(product.features.last.rating_by_product(product.id)).to eq(3.33)
      end

    end

end
