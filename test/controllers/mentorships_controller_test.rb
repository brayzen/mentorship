require 'test_helper'

class MentorshipsControllerTest < ActionController::TestCase
  setup do
    @mentorship = mentorships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentorships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mentorship" do
    assert_difference('Mentorship.count') do
      post :create, mentorship: {  }
    end

    assert_redirected_to mentorship_path(assigns(:mentorship))
  end

  test "should show mentorship" do
    get :show, id: @mentorship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mentorship
    assert_response :success
  end

  test "should update mentorship" do
    patch :update, id: @mentorship, mentorship: {  }
    assert_redirected_to mentorship_path(assigns(:mentorship))
  end

  test "should destroy mentorship" do
    assert_difference('Mentorship.count', -1) do
      delete :destroy, id: @mentorship
    end

    assert_redirected_to mentorships_path
  end
end
