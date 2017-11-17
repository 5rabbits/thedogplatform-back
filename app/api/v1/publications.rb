module V1
  class Publications < Grape::API
    resource :publications do
      desc 'Get all publications'
      get do
        present Publication.all, with: Entities::Publication
      end
      
      desc 'Create new publication'
      params do
        requires :user_id, type: Integer, desc: 'Publication owner id'
        requires :dog_id, type: Integer, desc: 'Dog id'
        requires :status, type: String, desc: 'Publication status'
        requires :place, type: String, desc: 'Dog last location'
        requires :date, type: Date, desc: 'Date of last encounter'
        requires :description, type: String, desc: 'Encounter description'
      end
      post do
        publication = Publication.create_from_params params
        error! 'Unprocessable Entity', 422 unless publication.save
        publication
      end
    end
  end
end
