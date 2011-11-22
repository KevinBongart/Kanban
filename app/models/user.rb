class User < ActiveRecord::Base
  belongs_to :story
  belongs_to :state

  scope :inactive,  where(:story_id => nil)
end
