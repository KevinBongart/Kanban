class State < ActiveRecord::Base
  has_many :stories
  has_many :users

  default_scope order('position ASC')
end
