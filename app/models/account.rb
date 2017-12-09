class Account < ApplicationRecord
  has_many :movements
  belongs_to :user

  def self.create_with_params(params)
    a = Account.new
    a.name = params[:name]
    a.user_id = params[:user_id]
    a.save
    a
  end

  def self.update_with_params(params)
    a = Account.find_by(id: params[:id])
    a.name = params[:name]
    a.save
    a
  end

  def self.destroy_with_params(params)
    a = Account.find_by(id: params[:id])
    a.delete
    a
  end
end
