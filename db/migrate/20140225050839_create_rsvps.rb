class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :names
      t.string :email
      t.string :answer
      t.text :message
      t.datetime :sent_at

      t.timestamps
    end
  end
end
