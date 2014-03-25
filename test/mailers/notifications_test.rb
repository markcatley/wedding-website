require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "rsvp" do
    mail = Notifications.rsvp
    assert_equal "Rsvp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "transport" do
    mail = Notifications.transport
    assert_equal "Transport", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "contact" do
    mail = Notifications.contact
    assert_equal "Contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
