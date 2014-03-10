class AddWeddingResponseBbqResponseMobileNumberToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :wedding_response, :string
    add_column :rsvps, :bbq_response, :string
    add_column :rsvps, :mobile_number, :string
    remove_column :rsvps, :answer, :string
  end
end
