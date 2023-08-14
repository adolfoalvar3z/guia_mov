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
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
