module V1
  class Dogs < Grape::API
    resource :dogs do
      desc 'Get all specialities'
      get do
        present Dog.all, with: Entities::Dog
      end

      desc 'Create new speciality'
      params do
        requires :user_id, type: Integer, desc: 'Dog owner id'
        requires :name, type: String, desc: 'Dog name'
        requires :race, type: String, desc: 'Dog race'
        requires :age, type: Integer, desc: 'Dog age'
        requires :colour, type: String, desc: 'Dog color'
        requires :size, type: String, desc: 'Dog size'
        requires :aggressiveness, type: Integer, desc: 'Dog aggressiveness'
        requires :photo, type: String, desc: 'Dog photo'
      end
      post do
        dog = Dog.create_from_params params
        error! 'Unprocessable Entity', 422 unless dog.save
        dog
      end
    end
  end
end