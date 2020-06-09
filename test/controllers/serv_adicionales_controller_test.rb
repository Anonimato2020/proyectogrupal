require 'test_helper'

class ServAdicionalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serv_adicionale = serv_adicionales(:one)
  end

  test "should get index" do
    get serv_adicionales_url
    assert_response :success
  end

  test "should get new" do
    get new_serv_adicionale_url
    assert_response :success
  end

  test "should create serv_adicionale" do
    assert_difference('ServAdicionale.count') do
      post serv_adicionales_url, params: { serv_adicionale: { nombre: @serv_adicionale.nombre } }
    end

    assert_redirected_to serv_adicionale_url(ServAdicionale.last)
  end

  test "should show serv_adicionale" do
    get serv_adicionale_url(@serv_adicionale)
    assert_response :success
  end

  test "should get edit" do
    get edit_serv_adicionale_url(@serv_adicionale)
    assert_response :success
  end

  test "should update serv_adicionale" do
    patch serv_adicionale_url(@serv_adicionale), params: { serv_adicionale: { nombre: @serv_adicionale.nombre } }
    assert_redirected_to serv_adicionale_url(@serv_adicionale)
  end

  test "should destroy serv_adicionale" do
    assert_difference('ServAdicionale.count', -1) do
      delete serv_adicionale_url(@serv_adicionale)
    end

    assert_redirected_to serv_adicionales_url
  end
end
