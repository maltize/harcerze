require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should show page" do
    get :show, :id => @page.to_param
    assert_response :success
  end

end
