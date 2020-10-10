require 'test_helper'

class CollabRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collab_request = collab_requests(:one)
  end

  test "should get index" do
    get collab_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_collab_request_url
    assert_response :success
  end

  test "should create collab_request" do
    assert_difference('CollabRequest.count') do
      post collab_requests_url, params: { collab_request: {  } }
    end

    assert_redirected_to collab_request_url(CollabRequest.last)
  end

  test "should show collab_request" do
    get collab_request_url(@collab_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_collab_request_url(@collab_request)
    assert_response :success
  end

  test "should update collab_request" do
    patch collab_request_url(@collab_request), params: { collab_request: {  } }
    assert_redirected_to collab_request_url(@collab_request)
  end

  test "should destroy collab_request" do
    assert_difference('CollabRequest.count', -1) do
      delete collab_request_url(@collab_request)
    end

    assert_redirected_to collab_requests_url
  end
end
