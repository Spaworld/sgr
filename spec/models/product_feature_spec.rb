require 'rails_helper'

RSpec.describe ProductFeature, type: :model do

  context 'validations' do

  end

  context 'associations' do

    it { should belong_to(:product) }
    it { should belong_to(:feature) }
    it { should belong_to(:rating) }

  end

end
