require 'rails_helper'

RSpec.describe ProductFeature, type: :model do

  context 'validations' do

    it { should validate_presence_of(:rating) }
    it { should validate_inclusion_of(:rating).in_range(1...5) }

  end

  context 'associations' do

    it { should belong_to(:product) }
    it { should belong_to(:feature) }

  end

end
