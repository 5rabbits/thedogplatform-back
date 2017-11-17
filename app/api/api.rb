module API
  class API < Grape::API
    format :json
    prefix :api
    
    version 'v1', using: :path do
      mount ::V1::Users
      mount ::V1::Dogs
      mount ::V1::Publications
    end
  end
end