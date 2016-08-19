require 'rails_helper'

RSpec.describe Product, type: :model do

  context 'validations' do

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:brands) }
    it { should have_and_belong_to_many(:features) }
    it { should have_and_belong_to_many(:photos) }

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

    let(:features) { create_list(:feature, 3) }

    it 'should load existing list of features' do
      expect(subject.features).to match(features)
    end

  end

end
