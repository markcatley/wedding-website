class Notifications < ActionMailer::Base
  default from: "www@catley.net.nz", to: ['mark@catley.net.nz', 'craig.munro@raywhite.com']

  def rsvp rsvps
    @rsvps = rsvps
    @rsvp_count = rsvps.length
    mail subject: "You've had #{@rsvp_count} #{"rsvp".pluralize(@rsvp_count)}"
  end

  def transport requests
    @requests = requests
    @request_count = requests.length
    mail subject: "You've had #{@request_count} #{"request".pluralize(@request_count)} for transport"
  end

  def contact messages
    @messages = messages
    @message_count = messages.length
    mail subject: "You've had #{@message_count} #{"message".pluralize(@message_count)}"
  end
end
