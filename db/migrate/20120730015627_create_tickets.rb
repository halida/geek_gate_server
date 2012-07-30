class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.datetime :printed_at
      t.datetime :expired_at
      t.string :type
      t.string :code

      t.timestamps
    end
  end
end
