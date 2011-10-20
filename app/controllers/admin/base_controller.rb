class Admin::BaseController < ApplicationController

  layout "admin"

  USER_NAME, PASSWORD = "jacekreczek", "jacekreczek.123"

  before_filter :authenticate unless Rails.env == 'test'

private

  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == USER_NAME && password == PASSWORD
    end
  end

end
