require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get unauthorized" do
    get pages_unauthorized_url
    assert_response :success
  end

  test "should get unauthenticated" do
    get pages_unauthenticated_url
    assert_response :success
  end

end
