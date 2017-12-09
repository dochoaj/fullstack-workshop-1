module V1
  class SessionApi < Grape::API
    resource :session do
      post :login do
        user = User.find_for_authentication(email: params[:email])
        pwd = params[:password]

        raise V1::Exceptions::Unauthorized unless user.valid_password?(pwd)

        { token: user.generate_token, user: user }
      end
    end
  end
end
