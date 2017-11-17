module Entities
  class Dog < Grape::Entity
    expose :id
    expose :user, using: Entities::User
    expose :name
    expose :race
    expose :age
    expose :colour
    expose :size
    expose :aggressiveness
    expose :photo
  end
end