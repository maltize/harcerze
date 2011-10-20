require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  def test_feedback_email
    feedback = feedbacks(:one)

    email = UserMailer.feedback_email(feedback).deliver
    assert !ActionMailer::Base.deliveries.empty?

    assert_equal [UserMailer::FEEDBACK_EMAIL], email.to
    assert_equal "Harcerze - Wiadomość z serwisu", email.subject
    assert_match /#{feedback.username}/, email.encoded
    assert_match /#{feedback.message}/, email.encoded
  end

end
