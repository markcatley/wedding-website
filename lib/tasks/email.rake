task :email_rsvps => :environment do
  rsvps = Rsvp.unsent
  unless rsvps.empty?
    Notifications.rsvp(rsvps).deliver
    rsvps.each do |rsvp|
      rsvp.sent_at = Time.now
      rsvp.save
    end
  end
end

task :email_requests => :environment do
  requests = RequestForTransport.unsent
  unless requests.empty?
    Notifications.transport(requests).deliver
    requests.each do |request|
      request.sent_at = Time.now
      request.save
    end
  end
end

task email_all: [:email_rsvps, :email_requests]