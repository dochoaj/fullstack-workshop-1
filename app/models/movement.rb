class Movement < ApplicationRecord
  has_many :currency_movements
  belongs_to :account
  belongs_to :user
  belongs_to :movement_type
  belongs_to :currency
end