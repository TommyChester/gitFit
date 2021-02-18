require "test_helper"

class GymRatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_rat = gym_rats(:one)
  end

  test "should get index" do
    get gym_rats_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_rat_url
    assert_response :success
  end

  test "should create gym_rat" do
    assert_difference('GymRat.count') do
      post gym_rats_url, params: { gym_rat: {  } }
    end

    assert_redirected_to gym_rat_url(GymRat.last)
  end

  test "should show gym_rat" do
    get gym_rat_url(@gym_rat)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_rat_url(@gym_rat)
    assert_response :success
  end

  test "should update gym_rat" do
    patch gym_rat_url(@gym_rat), params: { gym_rat: {  } }
    assert_redirected_to gym_rat_url(@gym_rat)
  end

  test "should destroy gym_rat" do
    assert_difference('GymRat.count', -1) do
      delete gym_rat_url(@gym_rat)
    end

    assert_redirected_to gym_rats_url
  end
end
