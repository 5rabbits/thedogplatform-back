module Entities
  class Publication < Grape::Entity
    expose :id
    expose :user, using: Entities::User
    expose :dog, using: Entities::Dog
    expose :status
    expose :place
    expose :date
    expose :description
  end
end