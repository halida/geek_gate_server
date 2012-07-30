class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.string :type
      t.text :options
      t.string :answer
      t.integer :author_id

      t.timestamps
    end
  end
end
