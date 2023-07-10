class GuiaMovimiento < ApplicationRecord
  belongs_to :user

  has_one_attached :guia_firmada

  def to_s
    self.name
  end

end
