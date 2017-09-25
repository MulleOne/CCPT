require 'test_helper'

class AboutusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aboutus_new_url
    assert_response :success
  end

  test "should get create" do
    get aboutus_create_url
    assert_response :success
  end

end
