require 'test_helper'

class GestionUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get gestion_users_home_url
    assert_response :success
  end

end
