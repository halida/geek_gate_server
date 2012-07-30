class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :geek_id
      t.string :avatar
      t.text :description

      t.timestamps
    end
  end
end
