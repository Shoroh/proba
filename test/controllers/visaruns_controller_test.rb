require 'test_helper'

class VisarunsControllerTest < ActionController::TestCase
  setup do
    @visarun = visaruns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visaruns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visarun" do
    assert_difference('Visarun.count') do
      post :create, visarun: {  }
    end

    assert_redirected_to visarun_path(assigns(:visarun))
  end

  test "should show visarun" do
    get :show, id: @visarun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visarun
    assert_response :success
  end

  test "should update visarun" do
    patch :update, id: @visarun, visarun: {  }
    assert_redirected_to visarun_path(assigns(:visarun))
  end

  test "should destroy visarun" do
    assert_difference('Visarun.count', -1) do
      delete :destroy, id: @visarun
    end

    assert_redirected_to visaruns_path
  end
end
