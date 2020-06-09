require "application_system_test_case"

class EstacServAdicsTest < ApplicationSystemTestCase
  setup do
    @estac_serv_adic = estac_serv_adics(:one)
  end

  test "visiting the index" do
    visit estac_serv_adics_url
    assert_selector "h1", text: "Estac Serv Adics"
  end

  test "creating a Estac serv adic" do
    visit estac_serv_adics_url
    click_on "New Estac Serv Adic"

    fill_in "Estacionamiento", with: @estac_serv_adic.estacionamiento_id
    fill_in "Serv adicionale", with: @estac_serv_adic.serv_adicionale_id
    fill_in "Tarifa", with: @estac_serv_adic.tarifa
    click_on "Create Estac serv adic"

    assert_text "Estac serv adic was successfully created"
    click_on "Back"
  end

  test "updating a Estac serv adic" do
    visit estac_serv_adics_url
    click_on "Edit", match: :first

    fill_in "Estacionamiento", with: @estac_serv_adic.estacionamiento_id
    fill_in "Serv adicionale", with: @estac_serv_adic.serv_adicionale_id
    fill_in "Tarifa", with: @estac_serv_adic.tarifa
    click_on "Update Estac serv adic"

    assert_text "Estac serv adic was successfully updated"
    click_on "Back"
  end

  test "destroying a Estac serv adic" do
    visit estac_serv_adics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estac serv adic was successfully destroyed"
  end
end
