RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  config.use_transactional_fixtures = false
end
