require 'test_helper'

class DiscoBoxesControllerTest < ActionController::TestCase
  setup do
    @disco_box = disco_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disco_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disco_box" do
    assert_difference('DiscoBox.count') do
      post :create, disco_box: { icon_context_type: @disco_box.icon_context_type, jacket: @disco_box.jacket, price: @disco_box.price, title: @disco_box.title, track_list: @disco_box.track_list, url: @disco_box.url }
    end

    assert_redirected_to disco_box_path(assigns(:disco_box))
  end

  test "should show disco_box" do
    get :show, id: @disco_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disco_box
    assert_response :success
  end

  test "should update disco_box" do
    patch :update, id: @disco_box, disco_box: { icon_context_type: @disco_box.icon_context_type, jacket: @disco_box.jacket, price: @disco_box.price, title: @disco_box.title, track_list: @disco_box.track_list, url: @disco_box.url }
    assert_redirected_to disco_box_path(assigns(:disco_box))
  end

  test "should destroy disco_box" do
    assert_difference('DiscoBox.count', -1) do
      delete :destroy, id: @disco_box
    end

    assert_redirected_to disco_boxes_path
  end
end
