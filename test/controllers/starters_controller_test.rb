require 'test_helper'

class StartersControllerTest < ActionController::TestCase
  setup do
    @starter = starters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:starters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create starter" do
    assert_difference('Starter.count') do
      post :create, starter: { author: @starter.author, body: @starter.body, headline: @starter.headline, pay: @starter.pay }
    end

    assert_redirected_to starter_path(assigns(:starter))
  end

  test "should show starter" do
    get :show, id: @starter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @starter
    assert_response :success
  end

  test "should update starter" do
    patch :update, id: @starter, starter: { author: @starter.author, body: @starter.body, headline: @starter.headline, pay: @starter.pay }
    assert_redirected_to starter_path(assigns(:starter))
  end

  test "should destroy starter" do
    assert_difference('Starter.count', -1) do
      delete :destroy, id: @starter
    end

    assert_redirected_to starters_path
  end
end
