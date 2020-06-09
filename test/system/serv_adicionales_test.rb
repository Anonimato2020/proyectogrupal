require "application_system_test_case"

class ServAdicionalesTest < ApplicationSystemTestCase
  setup do
    @serv_adicionale = serv_adicionales(:one)
  end

  test "visiting the index" do
    visit serv_adicionales_url
    assert_selector "h1", text: "Serv Adicionales"
  end

  test "creating a Serv adicionale" do
    visit serv_adicionales_url
    click_on "New Serv Adicionale"

    fill_in "Nombre", with: @serv_adicionale.nombre
    click_on "Create Serv adicionale"

    assert_text "Serv adicionale was successfully created"
    click_on "Back"
  end

  test "updating a Serv adicionale" do
    visit serv_adicionales_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @serv_adicionale.nombre
    click_on "Update Serv adicionale"

    assert_text "Serv adicionale was successfully updated"
    click_on "Back"
  end

  test "destroying a Serv adicionale" do
    visit serv_adicionales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serv adicionale was successfully destroyed"
  end
end
