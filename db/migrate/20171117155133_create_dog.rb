class CreateDog < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.references :user
      t.string :name, null: true
      t.string :race, null: true
      t.integer :age, null: true
      t.string :colour, null: false
      t.string :size, null: false
      t.integer :aggressiveness, null: false
      t.string :photo, null: true
    end
  end
end
