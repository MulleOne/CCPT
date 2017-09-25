require 'test_helper'

class CareerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get career_new_url
    assert_response :success
  end

  test "should get create" do
    get career_create_url
    assert_response :success
  end

end
