class Rsvp < ActiveRecord::Base
  scope :unsent, -> { where(sent_at: nil) }
end
