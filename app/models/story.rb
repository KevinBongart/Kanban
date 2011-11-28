class Story < ActiveRecord::Base
  acts_as_list

  belongs_to :project
  belongs_to :state
  belongs_to :user

  has_many :users
  has_many :tasks
  has_many :attached_images
  has_many :attached_copies
  has_many :comments

  scope :normal,    where(:icebox => false, :fast_lane => false)
  scope :icebox,    where(:icebox => true)
  scope :fast_lane, where(:fast_lane => true)
end
