class HomeController < ApplicationController

  def index
    @page = Page.root
    @content = @page.try(:content)
  end

end
