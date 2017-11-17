class Dog < ApplicationRecord
  belongs_to :user
  has_many :publications

  def self.create_from_params(params)
    return nil if params.nil?

    attributes = params.to_h.symbolize_keys
    entry = new
    entry.user = User.find_by(id: attributes[:user_id])
    return nil if entry.user.nil?

    entry.name = attributes[:name]
    entry.race = attributes[:race]
    entry.age = attributes[:age]
    entry.colour = attributes[:colour]
    entry.size = attributes[:size]
    entry.aggressiveness = attributes[:aggressiveness]
    entry.photo = attributes[:photo]
    entry
  end
end