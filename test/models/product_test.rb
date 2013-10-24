require 'test_helper'

class ProductTest < ActiveSupport::TestCase
test "name" do
  	product = products(:test)
  	assert_equal "Example", product.name
  	product.errors.full_messages
  end
end
