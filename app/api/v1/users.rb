module V1
  class Users < Grape::API
    resource :users do
      desc 'Get all users'
      get do
        present User.all, with: Entities::User
      end
      
      desc 'Create new user'
      params do
        requires :username, type: String, desc: 'User username'
        requires :password, type: String, desc: 'User password'
        requires :name, type: String, desc: 'User name'
        optional :email, type: String, desc: 'User email'
        optional :phone_number, type: String, desc: 'User phone number'
      end
      post do
        user = User.create_from_params params
        error! 'Unprocessable Entity', 422 unless user.save
        user
      end
    end
  end
end