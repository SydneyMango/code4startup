require 'test_helper'

class ResortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resort_index_url
    assert_response :success
  end

  test "should get new" do
    get resort_new_url
    assert_response :success
  end

  test "should get create" do
    get resort_create_url
    assert_response :success
  end

  test "should get listing" do
    get resort_listing_url
    assert_response :success
  end

  test "should get description" do
    get resort_description_url
    assert_response :success
  end

  test "should get photo_upload" do
    get resort_photo_upload_url
    assert_response :success
  end

  test "should get features" do
    get resort_features_url
    assert_response :success
  end

  test "should get location" do
    get resort_location_url
    assert_response :success
  end

  test "should get update" do
    get resort_update_url
    assert_response :success
  end

end
