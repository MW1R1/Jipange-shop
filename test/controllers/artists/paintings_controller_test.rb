require "test_helper"

class Artists::PaintingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artists_paintings_index_url
    assert_response :success
  end
end
