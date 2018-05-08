require 'test_helper'

class GradePointsControllerTest < ActionController::TestCase
  setup do
    @grade_point = grade_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grade_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade_point" do
    assert_difference('GradePoint.count') do
      post :create, grade_point: { content: @grade_point.content, title: @grade_point.title, user_id: @grade_point.user_id }
    end

    assert_redirected_to grade_point_path(assigns(:grade_point))
  end

  test "should show grade_point" do
    get :show, id: @grade_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade_point
    assert_response :success
  end

  test "should update grade_point" do
    patch :update, id: @grade_point, grade_point: { content: @grade_point.content, title: @grade_point.title, user_id: @grade_point.user_id }
    assert_redirected_to grade_point_path(assigns(:grade_point))
  end

  test "should destroy grade_point" do
    assert_difference('GradePoint.count', -1) do
      delete :destroy, id: @grade_point
    end

    assert_redirected_to grade_points_path
  end
end
