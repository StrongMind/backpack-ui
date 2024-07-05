require "test_helper"

class TestComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_components_index_url
    assert_response :success
  end
end
