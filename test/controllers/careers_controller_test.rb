require 'test_helper'

class CareersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get careers_new_url
    assert_response :success
  end

  test "should get create" do
    get careers_create_url
    assert_response :success
  end

end
