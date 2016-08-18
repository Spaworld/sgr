require 'factory_girl_rails'
require 'support/database_cleaner'
require 'paperclip/matchers'

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Factory Girl
  config.include FactoryGirl::Syntax::Methods

  # Shouldas for Paperclip
  config.include Paperclip::Shoulda::Matchers

  # removes test Paperclip images
  config.after(:suite) do
    FileUtils.rm_rf(Dir["#{Rails.root}/spec/test_files/"])
  end

end
