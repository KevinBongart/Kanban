class Task < ActiveRecord::Base
  belongs_to :story

  scope :complete,  where(:done => true)
end
