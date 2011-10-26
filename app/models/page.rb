class Page < ActiveRecord::Base

  acts_as_nested_set

  validates_presence_of :title

  def to_param
    [id, title.parameterize].join('-')
  end

end
