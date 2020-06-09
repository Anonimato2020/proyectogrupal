require "application_system_test_case"

class PublicidadsTest < ApplicationSystemTestCase
  setup do
    @publicidad = publicidads(:one)
  end

  test "visiting the index" do
    visit publicidads_url
    assert_selector "h1", text: "Publicidads"
  end

  test "creating a Publicidad" do
    visit publicidads_url
    click_on "New Publicidad"

    fill_in "Contenido", with: @publicidad.contenido
    fill_in "Fechafin", with: @publicidad.fechafin
    fill_in "Fechaini", with: @publicidad.fechaini
    fill_in "Tarifa", with: @publicidad.tarifa
    fill_in "Titulo", with: @publicidad.titulo
    click_on "Create Publicidad"

    assert_text "Publicidad was successfully created"
    click_on "Back"
  end

  test "updating a Publicidad" do
    visit publicidads_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @publicidad.contenido
    fill_in "Fechafin", with: @publicidad.fechafin
    fill_in "Fechaini", with: @publicidad.fechaini
    fill_in "Tarifa", with: @publicidad.tarifa
    fill_in "Titulo", with: @publicidad.titulo
    click_on "Update Publicidad"

    assert_text "Publicidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicidad" do
    visit publicidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicidad was successfully destroyed"
  end
end
