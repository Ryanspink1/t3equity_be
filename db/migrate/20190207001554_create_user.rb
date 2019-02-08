class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :role, default: 0
      t.string :password_digest
    end
  end
end
