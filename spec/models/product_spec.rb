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
    it { should have_and_belong_to_many(:ratings) }

  end

  context 'callbacks' do
    before(:each) do
      @product = create(:product, :with_photos)
    end

    it 'should call .clear on photos before_destroy' do
      expect(@product.photos).to receive(:clear)
      @product.destroy
    end

    it 'should call .clear on ratings before_destory' do
      expect(@product.ratings).to receive(:clear)
      @product.destroy
    end

  end

end
