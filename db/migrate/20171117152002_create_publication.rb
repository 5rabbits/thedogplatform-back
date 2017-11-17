class CreatePublication < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.references :dog
      t.references :user
      t.string :status, null: false
      t.string :place, null: false
      t.date :date, null: false
      t.string :description, null: true
    end
  end
end
