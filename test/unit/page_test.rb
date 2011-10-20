require 'test_helper'

class PageTest < ActiveSupport::TestCase

  def test_should_be_valid
    assert pages(:one).valid?
    assert pages(:two).valid?
  end
end
