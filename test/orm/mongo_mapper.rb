MongoMapper.connection = Mongo::Connection.new(ENV['MONGO_RUBY_DRIVER_HOST'] || '127.0.0.1')
MongoMapper.database = 'devise-test-suite'

class ActiveSupport::TestCase
  setup do
    User.delete_all
    Admin.delete_all
  end
end
