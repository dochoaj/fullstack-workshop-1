class Currency < ApplicationRecord
  has_many :movements
  has_many :currency_movements
end
