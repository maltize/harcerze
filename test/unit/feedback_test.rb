require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase

  def test_should_be_valid
    assert feedbacks(:one).valid?
  end

  def test_validate_format_of_username
    feedbacks(:one).username = 'wrong'

    deny feedbacks(:one).valid?
    assert feedbacks(:one).errors[:username]
  end

end
