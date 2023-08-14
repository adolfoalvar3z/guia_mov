# == Schema Information
#
# Table name: guia_movimientos
#
#  id              :integer          not null, primary key
#  user_id         :integer          not null
#  nombre_receptor :string
#  email_receptor  :string
#  unidad_receptor :string
#  estado          :string           default("Pendiente")
#  observacion     :text
#  guia_firmada    :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class GuiaMovimientoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
