require 'rails_helper'

RSpec.describe Photo, type: :model do

  it 'has a valid factory' do
    expect(build(:photo)).to be_valid
  end

  context 'associations' do

    it { should have_and_belong_to_many(:brands) }
    it { should have_and_belong_to_many(:features) }
    it { should have_and_belong_to_many(:products) }

  end

  context 'file' do

    it { should have_attached_file(:file) }
    it { should validate_attachment_presence(:file) }

  end

end

