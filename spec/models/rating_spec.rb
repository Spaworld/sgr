require 'rails_helper'

RSpec.describe Rating, type: :model do

  context 'validations' do

    it { should validate_presence_of(:stars) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:products) }
    it { should have_and_belong_to_many(:brands) }

  end

end
