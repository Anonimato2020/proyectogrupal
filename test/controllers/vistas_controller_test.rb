require 'test_helper'

class VistasControllerTest < ActionDispatch::IntegrationTest
  test "should get PrincipalDue" do
    get vistas_PrincipalDue_url
    assert_response :success
  end

  test "should get PrincipalCli" do
    get vistas_PrincipalCli_url
    assert_response :success
  end

  test "should get PrincipalAdmin" do
    get vistas_PrincipalAdmin_url
    assert_response :success
  end

  test "should get ListarEstac" do
    get vistas_ListarEstac_url
    assert_response :success
  end

end
