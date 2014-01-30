require 'test_helper'

class MusicvideosControllerTest < ActionController::TestCase
  setup do
    @musicvideo = musicvideos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musicvideos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musicvideo" do
    assert_difference('Musicvideo.count') do
      post :create, musicvideo: { artist: @musicvideo.artist, title: @musicvideo.title }
    end

    assert_redirected_to musicvideo_path(assigns(:musicvideo))
  end

  test "should show musicvideo" do
    get :show, id: @musicvideo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musicvideo
    assert_response :success
  end

  test "should update musicvideo" do
    patch :update, id: @musicvideo, musicvideo: { artist: @musicvideo.artist, title: @musicvideo.title }
    assert_redirected_to musicvideo_path(assigns(:musicvideo))
  end

  test "should destroy musicvideo" do
    assert_difference('Musicvideo.count', -1) do
      delete :destroy, id: @musicvideo
    end

    assert_redirected_to musicvideos_path
  end
end
