module V1
  class AccountApi < Grape::API
    use V1::Middleware::TokenAuthenticable
    
    resource :accounts do
      desc 'Fetch all accounts'
      get do
        present Account.all, with: Entities::AccountEntity
      end

      desc 'Create an account'
      params do
        requires :name, type: String, desc: 'Account name.'
        requires :user_id, type: Integer, desc: 'User id.'
      end
      post do
        account = Account.create_with_params(params)
        present account, with: Entities::AccountEntity
      end

      desc 'Update an account'
      params do
        requires :name, type: String, desc: 'Account name.'
        requires :id, type: Integer, desc: 'Account id.'
      end
      put do
        account = Account.update_with_params(params)
        present account, with: Entities::AccountEntity
      end

      desc 'Destroys an account'
      params do
        requires :id, type: Integer, desc: 'Account id.'
      end
      delete do
        account = Account.destroy_with_params(params)
        present account, with: Entities::AccountEntity
      end
    end
  end
end