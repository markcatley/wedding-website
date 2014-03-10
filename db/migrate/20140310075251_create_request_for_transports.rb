class CreateRequestForTransports < ActiveRecord::Migration
  def change
    create_table :request_for_transports do |t|
      t.string :names
      t.text :address
    end
  end
end
