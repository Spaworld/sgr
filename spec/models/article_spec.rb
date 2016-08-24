require 'rails_helper'

RSpec.describe Article, type: :model do

  context 'validations' do

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }

  end

  context 'assocications' do

    it { should have_and_belong_to_many(:photos) }

  end

end
