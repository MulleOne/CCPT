require 'test_helper'

class FaquestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faquestion = faquestions(:one)
  end

  test "should get index" do
    get faquestions_url
    assert_response :success
  end

  test "should get new" do
    get new_faquestion_url
    assert_response :success
  end

  test "should create faquestion" do
    assert_difference('Faquestion.count') do
      post faquestions_url, params: { faquestion: { answer: @faquestion.answer, question: @faquestion.question } }
    end

    assert_redirected_to faquestion_url(Faquestion.last)
  end

  test "should show faquestion" do
    get faquestion_url(@faquestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_faquestion_url(@faquestion)
    assert_response :success
  end

  test "should update faquestion" do
    patch faquestion_url(@faquestion), params: { faquestion: { answer: @faquestion.answer, question: @faquestion.question } }
    assert_redirected_to faquestion_url(@faquestion)
  end

  test "should destroy faquestion" do
    assert_difference('Faquestion.count', -1) do
      delete faquestion_url(@faquestion)
    end

    assert_redirected_to faquestions_url
  end
end
