# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  nombre        :string
#  codigoInterno :integer
#  stock         :integer
#  stockMin      :integer
#  foto          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  marca         :string
#  modelo        :string
#  description   :text
#  category_id   :integer          not null
#
class Product < ApplicationRecord
  validates :nombre, uniqueness:  { case_sensitive: true }, presence: true
  validates :stock, presence: true
  validates :stockMin, presence: true

  has_one_attached :foto
  has_many :categories
end
