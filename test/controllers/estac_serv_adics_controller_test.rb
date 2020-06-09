require 'test_helper'

class EstacServAdicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estac_serv_adic = estac_serv_adics(:one)
  end

  test "should get index" do
    get estac_serv_adics_url
    assert_response :success
  end

  test "should get new" do
    get new_estac_serv_adic_url
    assert_response :success
  end

  test "should create estac_serv_adic" do
    assert_difference('EstacServAdic.count') do
      post estac_serv_adics_url, params: { estac_serv_adic: { estacionamiento_id: @estac_serv_adic.estacionamiento_id, serv_adicionale_id: @estac_serv_adic.serv_adicionale_id, tarifa: @estac_serv_adic.tarifa } }
    end

    assert_redirected_to estac_serv_adic_url(EstacServAdic.last)
  end

  test "should show estac_serv_adic" do
    get estac_serv_adic_url(@estac_serv_adic)
    assert_response :success
  end

  test "should get edit" do
    get edit_estac_serv_adic_url(@estac_serv_adic)
    assert_response :success
  end

  test "should update estac_serv_adic" do
    patch estac_serv_adic_url(@estac_serv_adic), params: { estac_serv_adic: { estacionamiento_id: @estac_serv_adic.estacionamiento_id, serv_adicionale_id: @estac_serv_adic.serv_adicionale_id, tarifa: @estac_serv_adic.tarifa } }
    assert_redirected_to estac_serv_adic_url(@estac_serv_adic)
  end

  test "should destroy estac_serv_adic" do
    assert_difference('EstacServAdic.count', -1) do
      delete estac_serv_adic_url(@estac_serv_adic)
    end

    assert_redirected_to estac_serv_adics_url
  end
end
