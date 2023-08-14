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
class GuiaMovimiento < ApplicationRecord
  belongs_to :user

  has_one_attached :guia_firmada

  def to_s
    self.name
  end

end
