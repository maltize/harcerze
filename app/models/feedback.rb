class Feedback < ActiveRecord::Base

  validates_presence_of :username, :message
  validates_format_of :username, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
