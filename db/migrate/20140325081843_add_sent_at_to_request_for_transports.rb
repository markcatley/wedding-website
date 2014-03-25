class AddSentAtToRequestForTransports < ActiveRecord::Migration
  def change
    add_column :request_for_transports, :sent_at, :datetime
  end
end
