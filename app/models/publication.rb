class Publication < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  def self.create_from_params(params)
    return nil if params.nil?

    attributes = params.to_h.symbolize_keys
    entry = new

    entry.user = User.find_by(id: attributes[:user_id])
    return nil if entry.user.nil?

    entry.dog = Dog.find_by(id: attributes[:dog_id])
    return nil if entry.dog.nil?

    entry.status = attributes[:status]
    entry.place = attributes[:place]
    entry.date = attributes[:date] || DateTime.now
    # optionals
    entry.description = attributes[:description]
    entry
  end

  def self.find_by_id(id)
    entry = Publication.find_by(id: id)
    entry
  end
end
