require "application_system_test_case"

class UnidadsTest < ApplicationSystemTestCase
  setup do
    @unidad = unidads(:one)
  end

  test "visiting the index" do
    visit unidads_url
    assert_selector "h1", text: "Unidads"
  end

  test "should create unidad" do
    visit unidads_url
    click_on "New unidad"

    fill_in "Nombre", with: @unidad.nombre
    click_on "Create Unidad"

    assert_text "Unidad was successfully created"
    click_on "Back"
  end

  test "should update Unidad" do
    visit unidad_url(@unidad)
    click_on "Edit this unidad", match: :first

    fill_in "Nombre", with: @unidad.nombre
    click_on "Update Unidad"

    assert_text "Unidad was successfully updated"
    click_on "Back"
  end

  test "should destroy Unidad" do
    visit unidad_url(@unidad)
    click_on "Destroy this unidad", match: :first

    assert_text "Unidad was successfully destroyed"
  end
end
