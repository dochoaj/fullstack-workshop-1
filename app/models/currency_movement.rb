class CurrencyMovement < ApplicationRecord
  belongs_to :movement
  belongs_to :currency
end