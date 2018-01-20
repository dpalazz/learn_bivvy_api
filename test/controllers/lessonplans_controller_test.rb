require 'test_helper'

class LessonplansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lessonplan = lessonplans(:one)
  end

  test "should get index" do
    get lessonplans_url, as: :json
    assert_response :success
  end

  test "should create lessonplan" do
    assert_difference('Lessonplan.count') do
      post lessonplans_url, params: { lessonplan: { lesson_id: @lessonplan.lesson_id, service_id: @lessonplan.service_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lessonplan" do
    get lessonplan_url(@lessonplan), as: :json
    assert_response :success
  end

  test "should update lessonplan" do
    patch lessonplan_url(@lessonplan), params: { lessonplan: { lesson_id: @lessonplan.lesson_id, service_id: @lessonplan.service_id } }, as: :json
    assert_response 200
  end

  test "should destroy lessonplan" do
    assert_difference('Lessonplan.count', -1) do
      delete lessonplan_url(@lessonplan), as: :json
    end

    assert_response 204
  end
end
