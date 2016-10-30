require 'test_helper'

class Admin::Settings::SubcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_settings_subcategories_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_settings_subcategories_new_url
    assert_response :success
  end

end
