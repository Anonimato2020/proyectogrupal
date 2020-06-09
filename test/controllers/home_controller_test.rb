require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Contactenos" do
    get home_Contactenos_url
    assert_response :success
  end

  test "should get Index" do
    get home_Index_url
    assert_response :success
  end

  test "should get Nosotros" do
    get home_Nosotros_url
    assert_response :success
  end

end
