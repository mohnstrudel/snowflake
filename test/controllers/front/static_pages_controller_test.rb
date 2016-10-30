require 'test_helper'

class Front::StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get front_static_pages_index_url
    assert_response :success
  end

end
