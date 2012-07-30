class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.datetime :printed_at
      t.datetime :expired_at
      t.datetime :used_at

      t.string :state
      t.string :code

      t.integer :question_id
      t.boolean :right, default: false
      t.string :answer
      t.integer :next_ticket_id

      t.timestamps
    end
  end
end
