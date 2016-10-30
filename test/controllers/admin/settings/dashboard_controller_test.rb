require 'test_helper'

class Admin::Settings::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_settings_dashboard_index_url
    assert_response :success
  end

end
