require 'rails_helper'

RSpec.describe Rating, type: :model do

  it 'has a valid factory' do
    expect(build(:rating)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:stars) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:products) }
    it { should have_and_belong_to_many(:brands) }

  end

end
