module V1
  module Entities
    class AccountEntity < Grape::Entity
      expose :id
      expose :name
    end
  end
end