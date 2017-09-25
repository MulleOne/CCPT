require 'test_helper'

class FaQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fa_question = fa_questions(:one)
  end

  test "should get index" do
    get fa_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_fa_question_url
    assert_response :success
  end

  test "should create fa_question" do
    assert_difference('FaQuestion.count') do
      post fa_questions_url, params: { fa_question: { answer: @fa_question.answer, question: @fa_question.question } }
    end

    assert_redirected_to fa_question_url(FaQuestion.last)
  end

  test "should show fa_question" do
    get fa_question_url(@fa_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_fa_question_url(@fa_question)
    assert_response :success
  end

  test "should update fa_question" do
    patch fa_question_url(@fa_question), params: { fa_question: { answer: @fa_question.answer, question: @fa_question.question } }
    assert_redirected_to fa_question_url(@fa_question)
  end

  test "should destroy fa_question" do
    assert_difference('FaQuestion.count', -1) do
      delete fa_question_url(@fa_question)
    end

    assert_redirected_to fa_questions_url
  end
end
