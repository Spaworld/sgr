require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end

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

end
