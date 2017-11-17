class User < ApplicationRecord
  has_many :dogs
  has_many :publications
  
  def self.create_from_params(params)
    return nil if params.nil?
    
    attributes = params.to_h.symbolize_keys
    entry = new
    entry.username = attributes[:username]
    entry.password = attributes[:password]
    entry.name = attributes[:name]
    # optionals
    entry.email = attributes[:email]
    entry.phone_number = attributes[:phone_number]
    entry
  end
end
