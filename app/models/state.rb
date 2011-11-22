class State < ActiveRecord::Base
  has_many :stories

  default_scope order('position ASC')
end
