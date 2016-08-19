require 'rails_helper'

FactoryGirl.factories.map(&:name).each do |factory_name|

  RSpec.describe "#{factory_name}" do

    it 'should be valid' do
      expect(build(factory_name)).to be_valid
    end

  end

end
