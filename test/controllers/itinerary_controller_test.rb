require "test_helper"

class ItineraryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get itinerary_show_url
    assert_response :success
  end

  test "should get index" do
    get itinerary_index_url
    assert_response :success
  end

  test "should get create" do
    get itinerary_create_url
    assert_response :success
  end

  test "should get new" do
    get itinerary_new_url
    assert_response :success
  end

  test "should get edit" do
    get itinerary_edit_url
    assert_response :success
  end

  test "should get update" do
    get itinerary_update_url
    assert_response :success
  end
end
