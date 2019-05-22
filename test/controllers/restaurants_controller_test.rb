require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurants_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurants_create_url
    assert_response :success
  end

  test "should get edit" do
    get restaurants_edit_url
    assert_response :success
  end

  test "should get updatedestroy" do
    get restaurants_updatedestroy_url
    assert_response :success
  end

end
