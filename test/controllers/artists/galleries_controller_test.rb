require "test_helper"

class Artists::GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artists_galleries_index_url
    assert_response :success
  end
end
