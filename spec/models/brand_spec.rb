require 'rails_helper'

RSpec.describe Brand, type: :model do

  it 'has a valid factory' do
    expect(build(:brand)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:photos) }
    it { should have_and_belong_to_many(:products) }

  end

end
