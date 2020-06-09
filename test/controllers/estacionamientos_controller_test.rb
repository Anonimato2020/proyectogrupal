require 'test_helper'

class EstacionamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacionamiento = estacionamientos(:one)
  end

  test "should get index" do
    get estacionamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_estacionamiento_url
    assert_response :success
  end

  test "should create estacionamiento" do
    assert_difference('Estacionamiento.count') do
      post estacionamientos_url, params: { estacionamiento: { alto: @estacionamiento.alto, ancho: @estacionamiento.ancho, departamento: @estacionamiento.departamento, dias: @estacionamiento.dias, direccion: @estacionamiento.direccion, distrito: @estacionamiento.distrito, hcierre: @estacionamiento.hcierre, hinicio: @estacionamiento.hinicio, img: @estacionamiento.img, largo: @estacionamiento.largo, latitud: @estacionamiento.latitud, longitud: @estacionamiento.longitud, nespac: @estacionamiento.nespac, nombre: @estacionamiento.nombre, precio: @estacionamiento.precio, provincia: @estacionamiento.provincia, telf: @estacionamiento.telf, ubicacion: @estacionamiento.ubicacion, usuario_id: @estacionamiento.usuario_id } }
    end

    assert_redirected_to estacionamiento_url(Estacionamiento.last)
  end

  test "should show estacionamiento" do
    get estacionamiento_url(@estacionamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacionamiento_url(@estacionamiento)
    assert_response :success
  end

  test "should update estacionamiento" do
    patch estacionamiento_url(@estacionamiento), params: { estacionamiento: { alto: @estacionamiento.alto, ancho: @estacionamiento.ancho, departamento: @estacionamiento.departamento, dias: @estacionamiento.dias, direccion: @estacionamiento.direccion, distrito: @estacionamiento.distrito, hcierre: @estacionamiento.hcierre, hinicio: @estacionamiento.hinicio, img: @estacionamiento.img, largo: @estacionamiento.largo, latitud: @estacionamiento.latitud, longitud: @estacionamiento.longitud, nespac: @estacionamiento.nespac, nombre: @estacionamiento.nombre, precio: @estacionamiento.precio, provincia: @estacionamiento.provincia, telf: @estacionamiento.telf, ubicacion: @estacionamiento.ubicacion, usuario_id: @estacionamiento.usuario_id } }
    assert_redirected_to estacionamiento_url(@estacionamiento)
  end

  test "should destroy estacionamiento" do
    assert_difference('Estacionamiento.count', -1) do
      delete estacionamiento_url(@estacionamiento)
    end

    assert_redirected_to estacionamientos_url
  end
end
