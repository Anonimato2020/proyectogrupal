require 'test_helper'

class SesionControllerTest < ActionDispatch::IntegrationTest
  test "should get Nuevo" do
    get sesion_Nuevo_url
    assert_response :success
  end

end
