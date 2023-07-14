class Product < ApplicationRecord
  validates :nombre, uniqueness:  { case_sensitive: true }, presence: true
  validates :stock, presence: true
  validates :stockMin, presence: true
end
