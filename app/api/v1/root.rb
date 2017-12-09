module V1
  class Root < Grape::API
    version 'v1'
    format :json
    prefix :api

    rescue_from V1::Exceptions::Unauthorized do
      error!('403 Forbidden', 403)
    end

    get :status do
      { status: 'Ok!' }
    end

    mount V1::SessionApi
    mount V1::AccountApi
  end
end
