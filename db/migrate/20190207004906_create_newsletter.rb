class CreateNewsletter < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :location
      t.references :user, foreign_key: true
    end
  end
end
