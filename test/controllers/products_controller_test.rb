require 'test_helper'

class ProductsControllerTest < ActionController::TestCase

test "index" do 
get :index
assert_response :success
puts @response.body
assert_select "h2 a", products(:test)
end

test "show" do
  get :show, id: products(:test).id
  assert_response :success

  assert_select "h2", text: 'Example', count: 1
  assert_select "h2", text: 'Other', count: 0
end
end