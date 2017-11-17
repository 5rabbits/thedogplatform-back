class User < ApplicationRecord
  has_many :dogs
  has_many :publications
end