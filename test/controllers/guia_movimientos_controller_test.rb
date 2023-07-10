require "test_helper"

class GuiaMovimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guia_movimiento = guia_movimientos(:one)
  end

  test "should get index" do
    get guia_movimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_guia_movimiento_url
    assert_response :success
  end

  test "should create guia_movimiento" do
    assert_difference("GuiaMovimiento.count") do
      post guia_movimientos_url, params: { guia_movimiento: { email_receptor: @guia_movimiento.email_receptor, nombre_receptor: @guia_movimiento.nombre_receptor, observacion: @guia_movimiento.observacion, unidad_receptor: @guia_movimiento.unidad_receptor, user_id: @guia_movimiento.user_id } }
    end

    assert_redirected_to guia_movimiento_url(GuiaMovimiento.last)
  end

  test "should show guia_movimiento" do
    get guia_movimiento_url(@guia_movimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_guia_movimiento_url(@guia_movimiento)
    assert_response :success
  end

  test "should update guia_movimiento" do
    patch guia_movimiento_url(@guia_movimiento), params: { guia_movimiento: { email_receptor: @guia_movimiento.email_receptor, nombre_receptor: @guia_movimiento.nombre_receptor, observacion: @guia_movimiento.observacion, unidad_receptor: @guia_movimiento.unidad_receptor, user_id: @guia_movimiento.user_id } }
    assert_redirected_to guia_movimiento_url(@guia_movimiento)
  end

  test "should destroy guia_movimiento" do
    assert_difference("GuiaMovimiento.count", -1) do
      delete guia_movimiento_url(@guia_movimiento)
    end

    assert_redirected_to guia_movimientos_url
  end
end
