module Entities
  class User < Grape::Entity
    expose :id
    expose :username
    expose :password
    expose :name
    expose :email
    expose :phone_number
  end
end