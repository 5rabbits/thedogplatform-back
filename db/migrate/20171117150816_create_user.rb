class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :name, null: false
      t.string :email, null: true
      t.string :phone_number, null: true
    end
  end
end
