class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def default_page
    @page ||= Page.root
  end

end
