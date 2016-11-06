require 'test_helper'

class Front::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get front_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get front_posts_show_url
    assert_response :success
  end

end
