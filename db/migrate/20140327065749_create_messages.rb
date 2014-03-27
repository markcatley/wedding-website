class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :names
      t.text :message
      t.datetime :sent_at

      t.timestamps
    end
  end
end
