class Card < ActiveRecord::Base
  belongs_to :list
  has_many :todos
  has_many :users
end
