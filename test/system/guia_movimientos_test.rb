require "application_system_test_case"

class GuiaMovimientosTest < ApplicationSystemTestCase
  setup do
    @guia_movimiento = guia_movimientos(:one)
  end

  test "visiting the index" do
    visit guia_movimientos_url
    assert_selector "h1", text: "Guia movimientos"
  end

  test "should create guia movimiento" do
    visit guia_movimientos_url
    click_on "New guia movimiento"

    fill_in "Email receptor", with: @guia_movimiento.email_receptor
    fill_in "Nombre receptor", with: @guia_movimiento.nombre_receptor
    fill_in "Observacion", with: @guia_movimiento.observacion
    fill_in "Unidad receptor", with: @guia_movimiento.unidad_receptor
    fill_in "User", with: @guia_movimiento.user_id
    click_on "Create Guia movimiento"

    assert_text "Guia movimiento was successfully created"
    click_on "Back"
  end

  test "should update Guia movimiento" do
    visit guia_movimiento_url(@guia_movimiento)
    click_on "Edit this guia movimiento", match: :first

    fill_in "Email receptor", with: @guia_movimiento.email_receptor
    fill_in "Nombre receptor", with: @guia_movimiento.nombre_receptor
    fill_in "Observacion", with: @guia_movimiento.observacion
    fill_in "Unidad receptor", with: @guia_movimiento.unidad_receptor
    fill_in "User", with: @guia_movimiento.user_id
    click_on "Update Guia movimiento"

    assert_text "Guia movimiento was successfully updated"
    click_on "Back"
  end

  test "should destroy Guia movimiento" do
    visit guia_movimiento_url(@guia_movimiento)
    click_on "Destroy this guia movimiento", match: :first

    assert_text "Guia movimiento was successfully destroyed"
  end
end
